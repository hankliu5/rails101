class WelcomeController < ApplicationController
  def index
    flash[:warning] = "Time to sleep"
  end
end
