module Owner
  class CostumesController < ApplicationController


    def index
      @owner_costumes = current_user.costumes
    end

    def new
      @owner_costume = Costume.new
    end

    def create
      @owner_costume = Costume.new(owner_costume_params)
      @owner_costume.owner = current_user #ici il fallait creer une user du moins expliquer aui est le user
      @owner_costume.save

      redirect_to owner_costumes_path
    end

    private

    def owner_costume_params
      params.require(:costume).permit(:name, :description, :category, :size, :address, :price_per_day, :photo)
    end
  end
end
