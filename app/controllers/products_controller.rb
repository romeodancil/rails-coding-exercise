class ProductsController < ApplicationController
    before_action :set_product, only: %i[ show edit update destroy]

    def index
        @products = Product.all
    end

    def new
        @product = Product.new
    end

    def show
        @criteria = Criteria.find_by("criteria like ? and criteria like ?", "%#{@product.reference}%", "%#{@product.category}%")
        if @criteria == nil
            @criteria = Criteria.find_by("criteria like ? or criteria like ?", "%#{@product.reference}%", "%#{@product.category}%")
        end
    end

    def edit
    end

    def create
        @product = Product.new(product_params)
        respond_to do |format|
            if @product.save
                format.html { redirect_to root_path, notice: "Product Successfully Created"}
            else
                format.html { render :new, notice: "Error Upon saving product" }
            end
        end
    end

    def update
        respond_to do |format|
            if @product.update(product_params)
                format.html { redirect_to root_path, notice: "Product Successfully updated" }
            else
                format.html { redirect_to :new, notice: "Error Upon Updating Product" }
            end
        end
    end

    def destroy
        @product.destroy
        respond_to do |format|
            format.html { redirect_to root_path, notice: "Product Successfully deleted" }
        end
    end

    private

    def set_product
        id = params[:id]
        reference = params[:reference]
        
        if reference
            @product = Product.find_by(reference: reference.delete(" "))
        else
            @product = Product.find(id)
        end

    end

    def product_params
        params.require(:product).permit(:name, :category, :reference, :price)
    end
end