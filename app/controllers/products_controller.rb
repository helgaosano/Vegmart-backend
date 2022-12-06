class ProductsController < ApplicationController

    def index 
        render json: Product.all
    end

    def show 
        product = find_product
        render json: product, status: :ok
    end

    def create 
        product = Product.create(product_params)
        reder json: product, status: :created
    end

    def destroy 
        product = find_product
        product.destroy
        render json: product, status: :no_content
    end

    private 

    def find_product 
        Product.find_by(id: params[:id])
    end

    def product_params 
        params.permit(:image_url, :name, :description, :price, :quantity)
    end
end
