class ListsController < ApplicationController
  before_action :select_list, only: %i[show destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
    @bookmark = Bookmark.new
  end

  def show
    @bookmark = Bookmark.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to root_path
  end

  def destroy
    @list.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def select_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
