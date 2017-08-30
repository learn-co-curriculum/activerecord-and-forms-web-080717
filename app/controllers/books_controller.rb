class BooksController < ApplicationController
  # index
 get '/books' do
   @books = Book.all
   erb :'books/index.html'
 end

 get '/books/new' do
   @authors = Author.all
   erb :'books/new.html'
 end

 get '/books/:id/edit' do
   @book = Book.find_by(id: params[:id])
   erb :'books/edit.html'
 end

 get '/books/:id' do
   @book = Book.find_by(id: params[:id])
   erb :'books/show.html'
 end

 post '/books' do
   book = Book.new(params[:book])
   book.save

   redirect "/books/#{book.id}"
 end

 patch '/books/:id' do
   book = Book.find_by(id: params[:id])
   book.update(params[:book])

   redirect "/books/#{book.id}"

 end
end
