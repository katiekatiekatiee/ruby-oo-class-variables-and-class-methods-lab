#require "pry"

class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []
@@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        #@@genre_count = {rock: 1, pop: 4, country: 5}
       # @@genre_count[:rock]
       # @@genre_count[:rock] = 6
       genre_count = {}
        self.genres.each do |genre|
          
             if genre_count[genre]
                genre_count[genre] += 1
             else
                genre_count[genre] = 1
                #@@genre_count = 1
                
             end
        end
           genre_count 
    
    end

   
end

