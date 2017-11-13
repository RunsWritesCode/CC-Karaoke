require_relative('./guest.rb')
require_relative('./song.rb')
require_relative('./room.rb')

# def initialize(room, songs)
#   @songs1 = songs
#   @room = room
# end

puts "Welcome to CodeClan Karaoke! Which room would you like to visit, 1 or 2?"
room_choice = gets.chomp.to_i
if room_choice == 1
  puts "Great choice! Can you guess the theme of the room?"
  puts @songs1
  puts :songs1
  puts array.songs1
  puts [songs1]
answer = gets.chomp
if answer.include? "Manic" || "manic"
  puts "You got it!"
else
  puts "try again!"
end
end
