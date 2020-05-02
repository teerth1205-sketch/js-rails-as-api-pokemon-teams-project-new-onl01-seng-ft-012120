class TrainersController < ApplicationController
    def index
        trainers = Trainer.all
        render json: trainers, include: [:pokemons] 
    end 
    
     def show
        trainer = Trainer.all.find_by(id: params[:id])
        render json: trainer, include: [:pokemons]
    end
end
