class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def destroy
        activity=find_activity.destroy
        render json: {}
    end

    private

    def find_activity
        Activity.find(params[:id])
    end

end
