class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def show
        plant = Plant.find_by(id: params[:id])        
        render json: plant
    end

    def create
        plant = Plant.create(plant_params)
        render json: plant, status: :create
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
