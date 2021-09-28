class CriteriasController < ApplicationController
    before_action :set_criteria, only: %i[ show edit update destroy]
    
    def index
        @criterias = Criteria.all
    end

    def new
        @criteria = Criteria.new
    end

    def edit
    end

    def show
    end

    def update
        respond_to do |format|
            if @criteria.update(criteria_params)
                format.html { redirect_to criterias_path, notice: "Criteria Successfully Created" }
            else
                format.html { redirect_to :edit, notice: "Error Upon updating criteria. Please try again!" }
            end
        end
    end

    def create
        @criteria = Criteria.new(criteria_params)
        respond_to do |format|
            if @criteria.save
                format.html { redirect_to criterias_path, notice: "Criteria Successfully Created" }
            else
                format.html { redirect_to :new, notice: "Error Upon saving criteria. Please try again!" }
            end
        end
    end

    def destroy
        @criteria.destroy
        respond_to do |format|
            format.html { redirect_to criterias_path, notice: "Criteria Successfully Deleted" }
        end
    end


    private

    def set_criteria
        @criteria = Criteria.find(params[:id])
    end

    def criteria_params
        params.require(:criteria).permit(:distination, :criteria)
    end
end