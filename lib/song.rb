class Song
    attr_accessor :name, :artist, :genre 

    @@count
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @@count = @@count + 1
        @@artists << artist
        @@genres << genre
      @name, @artist, @genre = name, artist, genre
       
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist] #if it exists in the hash already
                artist_count[artist] += 1 #add one to the value count
            else
                artist_count[artist] = 1 #initialize if they don't
            end 
        end 
        artist_count
    end

    def self.genres
        @@genres.uniq
    end

    def self.genres_count
        @@genres.inject({}) do |res, el|
            res[el] ? res[el] += 1 : res[el] = 1
            res
        end 

end