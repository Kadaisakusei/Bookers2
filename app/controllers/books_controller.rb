class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
       flash[:notice] = "Book was successfully created."
       redirect_to book_path(@book.id)
    else
      @books = Book.all
      @user = current_user
      render :index

    end
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
    @newbook = Book.new
    @book = Book.find(params[:id])
    @user = User.find(@book.user_id)
  end

  def edit
  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

  private
    def user_params
      params.require(:user).permit(:name, :introduction, :image)
    end

end
