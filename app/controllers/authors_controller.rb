class AuthorsController < ApplicationController

  get '/authors' do
      @authors = Author.all

      erb :'authors/index.html'
  end

  get '/authors/:id' do
    @author = Author.find_by(id: params[:id])
    erb :'authors/show.html'
  end


end
