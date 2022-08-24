class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @services = Service.all
  end

  def profile
    @user = User.find(params[:id])
  end

end
