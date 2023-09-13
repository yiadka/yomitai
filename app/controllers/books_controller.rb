class BooksController < ApplicationController
  def index
    if session[:user_id]
	    # findの場合はユーザを存在しないとエラーを返すのでfind_byを使う
      @user = User.find_by(id: session[:user_id])
    end
    @books = Book.all
  end
end
