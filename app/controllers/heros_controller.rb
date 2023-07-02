class HerosController < ApplicationController

    def index
        heros = Hero.all
        render json: heros
    end

    def show
        hero = Hero.includes(:powers).find_by(id: params[:id])
        if hero
          render json: hero.as_json(include: { powers: { only: [:id, :name, :description] } })
        else
          render json: { error: "Hero not found" }, status: :not_found
        end
        
    end
end
