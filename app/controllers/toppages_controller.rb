class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @things = current_user.things
      @today = Date.today
    end
  end
end
