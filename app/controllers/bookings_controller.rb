class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.item = @item

    if @booking.save
      redirect_to dashboard_path
    else
      @booking = Booking.new
      render "items/show"
    end
  end



  private
  def booking_params
    params.require(:booking).permit(:item_id, :start_date, :end_date)
  end


end
