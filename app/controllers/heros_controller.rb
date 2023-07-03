class HerosController < ApplicationController

 rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        heros = Hero.all
        render json: heros
    end

    def show
      hero = find_hero
      render json: hero, status: :ok, serializer: PowerSerializer
  end

  private
  def find_hero
    Hero.find(params[:id])
  end

  def render_not_found_response
  render json: { errors: "Hero not found"}, status: :not_found
  end

  def render_unprocessable_entity_response(invalid)
  render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
