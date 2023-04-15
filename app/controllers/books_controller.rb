class BooksController < ApplicationController
  def new
  end

  private
  def list_params
    params.require(:list).permit(:title, :body, :image)  end

  def index
  end

  def show
  end

  def edit
  end
end
