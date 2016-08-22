class HomeController < ApplicationController
  def start
    @passcode = params[:passcode]
    @user = User.find(1)
  end
end
