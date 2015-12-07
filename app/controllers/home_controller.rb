class HomeController < ApplicationController
  def welcome
    render 'menu'
  end

  def about_us
  end

  def search
    case params['option'].downcase
      when 'rings' then redirect_to('/rings')
      when 'earrings' then redirect_to('/earrings')
      when 'necklaces' then redirect_to('/necklaces')
      when 'sets' then redirect_to('/sets')
      else render 'menu'
    end
  end
end