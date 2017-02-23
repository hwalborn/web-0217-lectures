class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # new
  get '/users/new' do
    erb :new
  end

  # create
  post '/users' do
    @user = User.create(params)
    erb :users
  end

  # index
  get '/users' do
    erb :users
  end
  # show
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :show
  end
  # edit
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :edit
  end
  # update
  patch '/users/:id' do
    @user = User.update(params)
    erb :show
  end
  # destroy
  delete '/users/:id/delete' do
    User.delete(:id)
  end

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
