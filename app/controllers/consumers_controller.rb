class ConsumersController < ApplicationController

    def index 
        render json: Consumer.all
    end

    # handles login
    def create 
        consumer = Consumer.create(consumer_params)
        session[:consumer_id] = consumer.id
        render json: consumer, status: :created
    end 

      # handle auto login 
      def show 
       render json: @current_user
    end 

    private 

    def consumer_params
        params.permit(:name, :email_address, :password, :password_confirmation)
    end 

end
