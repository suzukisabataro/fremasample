class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @items=Item.all.includes(:item_images).order('created_at DESC')
    @url = request.url
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
