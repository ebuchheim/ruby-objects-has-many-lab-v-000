class Song

    @@all = []
    attr_accessor :name, :artist

    def initialize(name)
        @@all << self
        @name = name
        @artist = artist
    end

    def self.all
        @@all
    end

    def artist_name
        if artist != nil
            self.artist.name
        else
            nil
        end
    end

end