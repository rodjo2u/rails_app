class UsersController < ApplicationController
  layout false

  def index
    @users = User.all
  end

  def search
    @users = User.search_by_name(params[:first_name])
    render('index')

  end
end
