class DashboardController < ApplicationController
  def index
		email = current_user.email.split('@')
	  @username = email.first
	  @items = current_user.items
  end
    
  def new
    email = current_user.email.split('@')
    @username = email.first
    @items = current_user.items 
    @user = current_user
  end 
    

  def update
    set_booking
    @booking.update(set_params)
    redirect_to dashboard_path
  end

  def destroy
  	@item = Item.find(params[:id])
  	@item.destroy
    redirect_to dashboard_path
  	
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_params
    params.require(:booking).permit(:status)
  end

end

