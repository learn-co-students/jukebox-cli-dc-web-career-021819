songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  users_response = gets.chomp
  
  songs.each_with_index do |song, index|
    if users_response == song || users_response == (index+1).to_s
      puts "Playing #{song}"
    else 
      puts "Invalid input, please try again"
    end
      
  end
  
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help()
  puts "Please enter a command:"
  users_input = gets.chomp 

  case users_input
  when "list"
    list
  when "play"
    play
  when "help"
    help
  else
    exit_jukebox
  end 

end 

