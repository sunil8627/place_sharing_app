class DashboardController < ApplicationController
  before_action :authenticate_user!


  def list_of_users
    @users = User.all
  end

end
