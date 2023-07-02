class HeroPowersController < ApplicationController

    def create
        hero_power = HeroPower.create!(hero_power_params)
        render json: hero_power, status: :created
    end
end
