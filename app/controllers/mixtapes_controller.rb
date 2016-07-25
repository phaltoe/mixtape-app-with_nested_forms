class MixtapesController < ApplicationController

  def new
    @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.new(mixtape_params)

    if @mixtape.valid?
      @mixtape.save
      raise "OwoW Yeah!"
    else
      raise "BoooOh!"
    end
  end

  private

  def mixtape_params
    params.require(:mixtape).permit(:name)
  end
end
