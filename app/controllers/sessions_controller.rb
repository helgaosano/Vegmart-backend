class SessionsController < ApplicationController
    skip_before_acion :authorize, only: :create
      # handles login feature
      def create 
        consumer = Consumer.find_by(email_address: params[:email_address])
        if consumer&.authenticate(params[:password])
            session[:consumer_id] = consumer.id
            render json: consumer, status: :created
        else
            render json: { errors: ["Invalid username or password"] }, status: :unauthorized
        end
    end 
end
