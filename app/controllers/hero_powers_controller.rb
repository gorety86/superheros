class HeroPowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        hero_powers = HeroPower.all 
        render json: hero_powers
    end

    def create
        hero_power = HeroPower.create(hero_power_params)
         hero_power.save
          render json: hero_power.hero.to_json(include: { powers: { only: [:id, :name, :description] } }), status: :created
        
      end

    private

    def hero_power_params
        params.permit(:strength, :hero_id, :power_id)
    end

    def render_not_found_response
        render json: { errors: "Hero Power not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
