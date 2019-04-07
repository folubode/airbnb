class PagesController < ApplicationController


  def home
  	@rooms = Room.where(active: true).limit(3)
  end

  def search
    # STEP 1 - does user provide location? se we can remember for next search
    if params[:search].present? && params[:search].strip != ""
      session[:loc_search] = params[:search]
    end

    # STEP 2 - if there's location, then get all rooms within 5km to the location
    if session[:loc_search] && session[:loc_search] != ""
      @rooms_address = Room.where(active: true).near(session[:loc_search], 5, order: 'distance')
    else # all rooms active in the database
      @rooms_address = Room.where(active: true).all
    end

    # STEP 3 - apply all the filters use select using ransack
    @search = @rooms_address.ransack(params[:q])

    @rooms = @search.result # put results in array

    @arrRooms = @rooms.to_a #transform results to array

    # STEP 4 - check if user check for a date range
    if (params[:start_date] && params[:end_date] && !params[:start_date].empty? &&  !params[:end_date].empty?)

      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])

      @rooms.each do |room| #display results

        not_available = room.reservations.where(
          "(? <= start_date AND start_date <= ?)
          OR (? <= end_date AND end_date <= ?)
          OR (start_date < ? AND ? < end_date)",
          start_date, end_date,
          start_date, end_date,
          start_date, end_date
        ).limit(1)

        if not_available.length > 0
          @arrRooms.delete(room)
        end
      end
    end
  end

end
