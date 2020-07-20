class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
     # @things = current_user.things.where("NOW() - `clean_day` > 3").all
     @things = Thing.find_by_sql("SELECT * FROM things where user_id = #{current_user.id} AND (NOW()-clean_day) > 3")
     @things_hurry = Thing.find_by_sql("SELECT * FROM things where user_id = #{current_user.id} AND (NOW()-clean_day) >= clean_frequency")
      @today = Date.today
    end
  end
end
