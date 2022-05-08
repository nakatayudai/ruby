class ListsController < ApplicationController
  def neoller
  end

  def lists
  end

  def new
    @list = List.new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to'/top'
  end
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
