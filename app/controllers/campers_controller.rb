class CampersController < ApplicationController

    def index
        render json: Camper.all
    end

    def show
        render json: find_camper, serializer: CamperActivitySerializer

    end

    def create
        camper=Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def find_camper
        Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
