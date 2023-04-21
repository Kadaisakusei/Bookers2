class HomesController < ApplicationController
  def top
  end

  def about
   @books = @user.books

  end

end
