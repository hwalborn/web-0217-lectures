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
    binding.pry
    @character = Character.create(params["character"])
    @character.actor = Actor.create(params["actor"])
    @character.tv_show = TvShow.create(params["tv_show"])
    @character.save
    Character.create({character_attributes: {name: 'vega', actor_name: "travolta", tv_show_name: "pulp"}})
    redirect to "/characters/#{@character.id}"

  end

  get('/characters') do
    @characters = Character.all
    erb(:'characters/index')
    #

  end

end
