class HerosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        heros = Hero.all
        render json: heros
    end

    def show
        hero = Hero.find (params[:id])
        render json: hero
    end


    def render_not_found_response
        render json: {errors: "Hero not found"}, status: :not_found
    end
end
