class DashboardController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index

  end	

  def list_of_users
    @users = User.all
  end

  def places_shared_by_you
    @places = current_user.sent_places.select('distinct place, longitude, latitude').where.not({ longitude: nil, latitude: nil })
    @places_coordinates = @places.pluck('longitude', 'latitude')
    @title = "Places shared by you"
  end	

  def places_shared_with_you 
    @places = current_user.received_places.select('distinct place, longitude, latitude').where.not({ longitude: nil, latitude: nil })
    @places_coordinates = @places.pluck('longitude', 'latitude')
    @title = "Places shared with you by others"
  end

  def display_public_places
  	user = User.find_by_username(params[:username])
    @places = user.sent_places.select('distinct place, longitude, latitude').where(is_public: true).where.not({ longitude: nil, latitude: nil })
    @places_coordinates = @places.pluck('longitude', 'latitude')
    @title = "Places shared publicly by #{user.username}"
  end	

  def share_new_location
  	@users = User.where.not(id: current_user.id).all 	
  end	

  def create_new_location
    if params[:public] == "1"
     params.delete "selected_users" 

     user_ids = User.where.not(id: current_user.id).pluck(:id)
     user_ids.each do |receiver_id|
      Place.create(:sender_id => current_user.id, :receiver_id => receiver_id, :place => params["place"], :is_public => true)
     end 
    else
     params["selected_users"].each do |receiver_id| 
      Place.create(:sender_id => current_user.id, :receiver_id => receiver_id, :place => params["place"], :is_public => false)
     end 
    end
    
    flash[:notice] = "Location shared successfully!"
    redirect_to places_shared_by_you_path
  end	
  	
end
