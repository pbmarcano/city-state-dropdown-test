class StatesController < ApplicationController
  def index
    @states = CS.states(params[:country])
  end
end
