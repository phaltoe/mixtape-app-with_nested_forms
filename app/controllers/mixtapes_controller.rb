class MixtapesController < ApplicationController

  def new
    @mixtape = Mixtape.new
    @mixtape.songs.build
  end

  def create
    @mixtape = Mixtape.new(mixtape_params)

    if @mixtape.valid?
      @mixtape.save
      raise "OwoW Yeah!"
    else
      render :new
    end
  end

  private

  def mixtape_params
    params.require(:mixtape).permit(:name, :songs_attributes => [:title])
  end
end
