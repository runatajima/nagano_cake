class Admins::ItemsController < ApplicationController
  before_action :authenticate_admin!,only: [:create,:edit,:update,:index, :show, :new]
  
  def new
     @item = Item.new
  end
  def index
     @items = Item.all
     @item =Item.new
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
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admins_items_(@item)
      flash[:notice_update] = "ジャンル情報を更新しました！"
    else
      redirect_to edit_admins_items_path(@item)
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end
end
private

  def item_params
    params.require(:item).permit(:genre_id, :name, :image, :introduction, :price,:is_active)

  end
