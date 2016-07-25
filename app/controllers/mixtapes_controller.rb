class MixtapesController < ApplicationController

  def new
    @mixtape = Mixtape.new
  end
end
