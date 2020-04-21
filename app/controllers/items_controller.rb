class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_item, only: [:show, :edit, :update, :destroy]

 def index
    if params[:query].present?
      @query = params[:query]
      @items = Item.where("name iLike '%#{params[:query]}%'")
    else
      @items = Item.all
    end
  end


def show
      @item = Item.find(params[:id])
      @booking = Booking.new
      @user = current_user
      split = @item.name.split
      @capitalized_name = split.map { |word| word.capitalize }.join(" ")
end



  def new
    @item = Item.new
    # authorize @item
  end

  def edit
    @item= Item.find(params[:id])
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    @item.save
    if @item.save
      redirect_to item_path(@item)
    else

      render :new
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end


  private
  def set_item
    @item= Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :price, :photo)
  end
end
