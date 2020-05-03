require 'pry'
class Artist
attr_accessor :name

@@all = []

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def songs
 Song.all.select do |song| 
    song.artist == self
    # binding.pry
 end

end

def genres
 songs.map do |song|
    song.genre 
 end
end
 

def new_song(name, genre)
 Song.new(name, self, genre)

#creates a new instance of the song
#song should know it belongs to the song
end





    
end