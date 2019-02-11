#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 my_songs = {
 "Go Go GO" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/01.mp3',
 "LiberTeens" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/02.mp3',
 "Hamburg" =>  '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/03.mp3',
 "Guiding Light" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/04.mp3',
 "Wolf" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/05.mp3',
 "Blue" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/06.mp3',
 "Graduation Failed" => '/Users/amethyst/Development/labs/jukebox-cli-dc-web-career-021819/audio/Emerald-Park/07.mp3'
 }

def help
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs to play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs = my_songs.collect do |key, value|
    key
  end
  output = ""
  my_songs.each_with_index do |song, index|
    output = output + "#{index + 1}. #{song}\n"
  end
  puts output
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  song_choice = gets.chomp

  if my_songs.has_key?(song_choice)
    my_songs.each do |key, value|
      if song_choice == key
        puts "Playing #{key}"
        system "open #{value}"
      end
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  # Show user command options
  help

  while true
    puts "Please enter a command:"
    response = gets.chomp
    if response == "list"
      list(my_songs)
    elsif response == "play"
      play(my_songs)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
