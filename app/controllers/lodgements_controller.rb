class LodgementsController < ApplicationController
  def new
    @lodgement = Lodgement.new
  end

  def create
    byebug
  end
  
end
