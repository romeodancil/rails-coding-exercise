require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test "should get product list" do
        get root_path
        assert_response :success
        assert_select "title", "Products List"
    end

    test "should get create products" do
        get new_product_path
        assert_response :success
        assert_select "title", "Add New Product"
    end

    test "should not save if all fields is emtpy" do
        product = Product.new
        assert_not product.save, "Save product with empty fields"
    end
end