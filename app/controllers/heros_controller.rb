class HerosController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        heros = Hero.all
        render json: heros
    end

    def show
        hero_power = HeroPower.find(params[:id])
          render json: hero_power.hero.to_json(include: { powers: { only: [:id, :name, :description] } })
        
    end


    def render_not_found_response
        render json: {errors: "Hero not found"}, status: :not_found
    end
end
