class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]
  before_action :require_user_logged_in, only: [:index, :edit]

  # GET /places
  # GET /places.json
  def index
    @places = current_user.places
  end

  # GET /places/1
  # GET /places/1.json
  def show
    @place = current_user.places.find(params[:id])
    @things = current_user.places.find(params[:id]).things
  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = current_user.places.build(place_params)
    if @place.save
      flash[:success] = '場所を追加しました。'
      redirect_to places_path
    else
      @microposts = current_user.places
      flash.now[:danger] = '場所の追加に失敗しました。'
      render 'places/index'
    end
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
    @place = Place.find(params[:id])

    if @place.update(place_params)
      flash[:success] = '場所の名称を変更しました'
      redirect_to places_path
    else
      flash.now[:danger] = '場所の名称は変更されませんでした'
      render :edit
    end
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place = Place.find(params[:id])
    @place.destroy

    flash[:success] = '場所は正常に削除されました'
    redirect_to places_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.permit(:name)
    end
end
