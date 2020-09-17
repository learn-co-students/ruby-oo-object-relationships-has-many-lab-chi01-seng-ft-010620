require "pry"

class Artist

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@songs = []
        @@all << self
    end 

    def self.all 
        @@all.uniq
    end 

    def songs 
        Song.all.select do |s|
            s.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end

    def add_song(song)
        song.artist = self 
    end

    def add_song_by_name(song_name)
        # takes in an argument of a song name, creates a new song with it and associates the song and artist (FAILED - 1)

        new_song = Song.new(song_name)
        self.add_song(new_song)
    end


end