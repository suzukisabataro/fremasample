class ItemsController < ApplicationController
  def index
  end

  def show
    # @items = Item.find(params[:id])
  end

  def new
    @item = Item.new
    @item.item_images.build
  end

  def create
    @item = Item.new(item_params)
    @item.save
  end

  def edit
  end

  private
  def item_params
    params.require(:item).permit(:name, :description, :price, item_images_attributes: [:image])
  end
end
