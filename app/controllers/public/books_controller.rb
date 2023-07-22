class Public::BookController < ApplicationController
  def index
    @user = currnt_user
    @book = Book.new
    @books = Book.all
  end
end
