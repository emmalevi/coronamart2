class ItemsController < ApplicationController
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
end

def new
  @item = Item.new
  authorize @item
end

def edit
end

def create
  @item = Item.new(item_params)
  @item.save
  if @item.save
    redirect_to item_path(@item)
  else
    render :new
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

end

private
def set_item
  @item= Item.find(params[:id])
end

def item_params
  params.require(:item).permit(:name, :description, :price, :picture_url)
  end
end
