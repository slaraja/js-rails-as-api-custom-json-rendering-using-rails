class BirdsController < ApplicationController
  # def index
  #   birds = Bird.all
  #   render json: birds
  # end

  # def index
  #   birds = Bird.all
  #   render json: birds, only: [:id, :name, :species]
  # end 

  def index
    birds = Bird.all
    render json: birds, except: [:created_at, :updated_at]
  end 

  # def index
  #   birds = Bird.all
  #   render json: birds.to_json(except: [:created_at, :updated_at])
      #renders same as above method 
      #except and only keywords are parameters of the to_json method
  # end 

  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird
  # end

  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: {id: bird.id, name: bird.name, species: bird.species } 
  # end 

  # def show
  #   bird = Bird.find_by(id: params[:id])
  #   render json: bird.slice(:id, :name, :species)
  #   #renders same as above method with 3 keys in a hash
  # end

  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: { id: bird.id, name: bird.name, species: bird.species }
    else
      render json: { message: 'Bird not found' }
    end
  end 

end 