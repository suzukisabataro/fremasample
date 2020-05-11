class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @items=Item.find(1)
  end

  def new
  end

  def create
  end

  def edit
  end
end
