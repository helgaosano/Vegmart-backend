class ConsumersController < ApplicationController

    def index 
        render json: Consumer.all
    end

    # handles login
    def create 
    consumer = Consumer.create(consumer_params)
        if consumer.valid?
            session[:user_id] = consumer.id
            render json: consumer, status: :created
        else
            render json: { errors: consumer.errors.full_messages }, status: :unprocessable_entity
        end
    end 

      # handle auto login 
      def show 
        consumer = Consumer.find_by(id: session[:consumer_id])
        if user
            render json: consumer, status: :created
        else
            render json: { error: ["Not authorized"] }, status: :unauthorized
        end
    end 

    private 

    def consumer_params
        params.permit(:name, :email_address, :password, :password_confirmation)
    end 

end
