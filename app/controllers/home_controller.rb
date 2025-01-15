# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @title = "Homepage"
  end

  def about
    @title = "About Us"
  end

  def contact
  @title = "Contact Us"
  end
end
