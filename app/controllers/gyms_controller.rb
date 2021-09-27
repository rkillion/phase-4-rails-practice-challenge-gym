class GymsController < ApplicationController
    
    def show
        gym = Gym.find(params[:id])
        render json: gym
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy!
        render json: {}
    end

end
