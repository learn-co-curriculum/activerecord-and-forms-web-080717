class Book < ActiveRecord::Base
  belongs_to :author

  # if !params[:author][:name].empty?
  #   first_name = params[:author][:name].split(' ').first
  #   last_name = params[:author][:name].split(' ').last
  #   author = Author.find_or_create_by(first_name: first_name, last_name: last_name)
  #
  #   book.author = author
  # end




  def author_attributes=(author_name)
    if !author_name.empty?
      first_name = author_name.split(' ').first
      last_name = author_name.split(' ').last

      self.author = Author.find_or_create_by(first_name: first_name, last_name: last_name)
    end
  end

end
