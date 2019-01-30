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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"

end

def list (songs)
  c = 0

  while c < songs.size
    puts "#{c+1}. #{songs[c]}"
    c+=1
  end

end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  output = ""

  intput = input.to_i

  if (intput > 0 && intput <= songs.size)
        output =  songs [input.to_i - 1]
  else
     songs.each do |e|
      if input == e
        output = e
      end
     end
  end
  if (output == "")
    puts "Invalid input, please try again"
  else
    puts "playing #{output}"
  end
  
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help

  loop do

    puts "Please enter a command:"
    command = gets.chomp

    if (command == "help")
      help
    elsif command == "play"
      play (songs)
    elsif command == "list"
      list (songs)
    elsif command == "exit"
      exit_jukebox
      break
    else
      puts "Not a command"
    end
  end
  
end