class StaticController < ApplicationController
	
  def welcome 
  	@user = User.find_by(first_name: params['first_name'])
  end

  def show
  	@gossip = Gossip.all
  end

  def team
  end

  def contact
  end

  def gossip
  	@gossips = Gossip.all
  	puts @gossips
  end

end
