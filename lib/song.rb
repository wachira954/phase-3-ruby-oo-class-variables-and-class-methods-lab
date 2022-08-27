class Song 
    attr_accessor :name, :artist, :genre
    @@count=0
    @@artists=[]
    @@genres=[]
    def initialize (name, artist, genre)
        @name=name
        @artist=artist
        @genre=genre
        @@artists <<artist
        @@genres <<genre
        @@count +=1
    end
    def Song.count 
        @@count
    end 
    def Song.artists
        @@artists.uniq
    end 
    def Song.genres
        @@genres.uniq
    end 
    def self.genre_count
        @@genres.tally
    end 
    def self.artist_count
        @@artists.tally
    end 
end 