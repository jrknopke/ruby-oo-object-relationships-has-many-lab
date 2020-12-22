class Artist
    attr_accessor :name
    @@song_count = 0

    def initialize(name)
        @name = name
    end

    def add_song(song)
        @@song_count += 1 
        song.artist = self  
    end

    def songs
        Song.all.select{|song| song.artist == self}
    end

    def add_song_by_name(song_name)
        @@song_count += 1
        song = Song.new(song_name)
        self.add_song(song)
        song
    end

    def self.song_count
        @@song_count + 1
    end
end