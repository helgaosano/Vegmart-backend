class CategoriesController < ApplicationController
    def index 
        render json: Category.all
    end

    def show 
        category = Category.find_by(id: params[:id])
        render json: category, serializer: SingleCategorySerializer
    end
end
