class Room

  attr_accessor :name, :capacity, :guests, :songs

  def initialize(name, capacity, songs)
    @name = name
    @capacity = capacity
    @songs = songs
    @guests = []
  end

  def check_in(guest)
    if @capacity > @guests.count
      @guests << guest
    else "Sorry, this room is for die hard Manics fans"
    end
  end

  def check_out()
    @guests.clear
  end

  def add_song(song)
    @songs << song
  end

  def is_favourite_song?(song)
    @songs.include?(song)
  end



end
