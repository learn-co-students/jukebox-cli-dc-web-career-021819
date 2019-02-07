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

def list(songs) 
  songs.each_with_index do | song, index | 
    puts "#{index + 1}. #{song}"
  end 
end 

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp 
  valid_input = false 
  songs.each_with_index do | song, index |
    if user_response == song || user_response == (index + 1).to_s 
      puts "Playing #{song}"
      valid_input = true 
    end 
  end 
  if valid_input == false 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help 
  user_response = ""
  keep_running = true
  while keep_running
    puts "Please enter a command:"
    user_response = gets.chomp
    case user_response
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help 
      when "exit"
        exit_jukebox
        keep_running = false
    end 
  end 
end 