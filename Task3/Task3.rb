class LibraryItem
    attr_accessor :title, :author, :publication_year
  
    def initialize(title, author, publication_year)
      @title = title
      @author = author
      @publication_year = publication_year
    end
  
    # A method to display common information about the item
    def display_info
      puts "Title: #{@title}"
      puts "Author: #{@author}"
      puts "Publication Year: #{@publication_year}"
    end
  end
# Book class with an additional property for genre
class Book < LibraryItem
    attr_accessor :genre
  
    def initialize(title, author, publication_year, genre)
      super(title, author, publication_year)
      @genre = genre
    end
  
    # Overriding display_info to include genre
    def display_info
      super  # Calls the base class display_info to print common properties
      puts "Genre: #{@genre}"
      puts "----------------------"
    end
  end
  
  # DVD class with an additional property for director
class DVD < LibraryItem
    attr_accessor :director
  
    def initialize(title, author, publication_year, director)
      super(title, author, publication_year)
      @director = director
    end
  
    # Overriding display_info to include director
    def display_info
      super
      puts "Director: #{@director}"
      puts "----------------------"
    end
  end
  
  # CD class with an additional property for artist
class CD < LibraryItem
    attr_accessor :artist
  
    def initialize(title, author, publication_year, artist)
      super(title, author, publication_year)
      @artist = artist
    end
  
    # Overriding display_info to include artist
    def display_info
      super
      puts "Artist: #{@artist}"
      puts "----------------------"
    end
  end
class Library
    def initialize
      @items = []
    end
  
    # Method to add a library item to the collection
    def add_item(item)
      @items << item
    end
  
    # Method to remove an item by its title
    def remove_item(title)
      @items.delete_if { |item| item.title == title }
    end
  
    # Method to display the details of all items
    def display_all_items
      @items.each do |item|
        item.display_info
      end
    end
  end
# Creating instances of different library items
book = Book.new("Concеpts of Programming Languagеs", "Robеrt Sеbеsta", 2015, "Programming")
dvd = DVD.new("Incеption", "Christophеr Nolan", 2010, "Sciеncе Fiction")
cd = CD.new("A Day at thе Racеs", "Quееn", 1976, "Rock")

book.display_info 
dvd.display_info 
cd.display_info

# Creating the library instance
library = Library.new
library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

# Displaying all items in the library
library.display_all_items


      