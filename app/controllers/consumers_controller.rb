class ConsumersController < ApplicationController

    def index 
        render json: Consumer.all
    end

    # handles login
    # def create 
    #     consumer = Consumer.create(consumer_params)
    #     session[:consumer_id] = consumer.id
    #     render json: consumer, status: :created
    # end 
    def create
        consumer = Consumer.create(consumer_params)
        if consumer.valid?
            session[:consumer_id] = consumer.id
            render json: consumer, status: 200
        else
            render json: { errors: consumer.errors.full_messages }, status: :unprocessable_entity
        end
    end

      # handle auto login 
      def show 
        consumer = Consumer.find_by(id: session[:id]) 
       render json: consumer
    end 

    private 

    def consumer_params
        params.permit(:name, :email_address, :password, :password_confirmation)
    end 

end
