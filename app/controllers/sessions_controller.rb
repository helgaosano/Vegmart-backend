class SessionsController < ApplicationController
      # handles login feature
      def create 
        consumer = Consumer.find_by(email_address: params[:email_address])
        if (params[:password])
            session[:consumer_id] = consumer.id
            render json: consumer, status: :created
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end 
end
