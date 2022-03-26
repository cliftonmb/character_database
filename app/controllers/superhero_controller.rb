class SuperheroController < ApplicationController

  def index
    render json: Superhero.all 
  end

  def show
    hero = Superhero.find_by(id: params[:id])
    render json: hero
  end

  def create
    hero = Superhero.new(
      secret_identity: params[:input_secret_identity],
      hero_name: params[:input_hero_name],
      power_level: params[:input_power_level],
      power: params[:input_power],
      user_id: current_user.id
    )
    if hero.save
      render json: hero
    else
      render json: {error: hero.errors.full_messages}
    end
  end

  def update
    hero = Superhero.find_by(id: params[:id])
    hero.secret_identity = params[:input_secret_identity] || hero.secret_identity
    hero.hero_name = params[:input_hero_name] || hero.hero_name
    hero.power_level = params[:input_power_level] || hero.power_level
    hero.power = params[:input_power] || hero.power

    hero.save
    render json: hero
  end

  def destroy
    hero = Superhero.find_by(id: params[:id])
    hero.delete
    render json: {message: "Hero has been deleted"}
  end

end
