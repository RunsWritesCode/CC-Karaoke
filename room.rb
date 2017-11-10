class Room

  attr_accessor :name, :capacity, :guests, :songs

  def initialize(name, capacity, songs)
    @name = name
    @capacity = capacity
    @songs = songs
    @guests = 0
  end



  def check_in(guest)
    # if room[:capacity] > guests.length
    @guests += 1
    # end
    # else return "Sorry, this room is for die hard Manics fans"
  end

  def check_out(guest)
    if @guests > 0
      @guests -= 1
    end
  end

  def add_song(song)
    @songs << song
  end


end
