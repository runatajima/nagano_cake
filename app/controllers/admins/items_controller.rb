class Admins::ItemsController < ApplicationController
  def new
     @items = Item.new
  end
  def index
     @items = Item.all
     @item =Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admins_item_path(@item)
    else
      flash[:genre_created_error] = "ジャンル名を入力してください"
    redirect_to
    end
  end

  def update
  end

  def show
  end
end
private

  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price,:is_active)

  end
