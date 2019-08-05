class StaticController < ApplicationController

  def home_page
    @gossips = Gossip.all
  end
	
  def welcome 
  	@first_name = params[:first_name]
  end

  def gossip
  	#@gossip = Gossip.find(params[:id])
  end

  def team
  end

  def contact
  end

end
