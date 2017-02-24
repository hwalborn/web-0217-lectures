class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

  get '/characters/:id' do
    @character = Character.find(params[:id])
    # binding.pry
    erb :'/characters/show'
  end

  post '/characters' do
    @character = Character.create(params)
    redirect to "/characters/#{@character.id}"

  end

  get('/characters') do
    @characters = Character.all
    erb(:'characters/index')
    #

  end

end
