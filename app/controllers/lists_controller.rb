class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]
  skip_before_action :authenticate_user!, only: :index
  skip_after_action :verify_authorized, only: :index

  def index
    @lists = policy_scope(List)
    # @lists = List.all
    # skip_policy_scope
  end

  def show
    # @list = List.find(params[:id])
    # authorize @list
    @movies = Movie.all
    @bookmark = Bookmark.new
  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    authorize @list
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    # @list = List.find(params[:id])
    # authorize @list
    @list.destroy
    redirect_to root_path
  end

  private

  def set_list
    @list = List.find(params[:id])
    authorize @list
  end

  def list_params
    params.require(:list).permit(:name, :image_url, :photo)
  end
end
