class NewSessionsController < Devise::SessionsController

def destroy
	super
	    @user = User.find(params[:user_id])
    redirect_to items_path
end