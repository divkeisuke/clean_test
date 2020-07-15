module PlacesHelper
    def current_place
        @current_place ||= Place.find_by(id: thing_params[:place_id])
    end
end
