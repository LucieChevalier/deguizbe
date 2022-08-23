class CostumesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def show
    @costumes = Costume.find(params[:id])
  end
end

