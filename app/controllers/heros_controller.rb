class HerosController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :hero_not_found

    #GET /heroes
    def index
        heroes = Hero.all
        render json: heroes,  status: :ok
    end

    # GET /heroes/:id
    def show
        #find
        hero = Hero.find(params[:id])
        #show
        render json: hero, serializer: HeroPowerSerializer, status: :ok
    end



    private

    def hero_not_found
        render json: {error: "Hero not found"}, status: :not_found
    end

end
