class CartsController < ApplicationController
    
    def index 
        carts = Cart.all
        render json: carts, status: :ok
    end

    def show
        cart = find_cart
        render json: cart
    end

    def destroy
        cart = find_cart
        if cart
            cart.destroy
            head :no_content
        else
            render json: { error: "Cart not found" }, status: :not_found
        end
    end

    private 
    def find_cart
    Cart.find_by(params[:id])
    end
    
end
