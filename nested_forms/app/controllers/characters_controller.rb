class CharactersController < ApplicationController
  get '/' do
    "Hello World"
  end

  get '/characters/new' do
    erb(:'characters/new')
  end

end
