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
  puts "I accept the following commands:\n
  - help : displays this help message\n
  - list : displays a list of songs to play\n
  - play : lets you choose a song to play\n
  - exit : exits this program"
end

def list(songs)
  output = ""
  songs.each_with_index do |song, index|
    output = output + "#{index + 1}. #{song}\n"
  end
  puts output
end

def play(songs)
  puts "Please enter a song name or number:"

  song_choice = gets.chomp
  song_numbers = (1..9).to_a
  if song_numbers.include?(song_choice.to_i)
    song_numbers.each do |number|
      if song_choice == number.to_s
        puts "Playing #{songs[number - 1]}"
      end
    end
  elsif songs.include?(song_choice)
    songs.each do |song|
      if song_choice == song
        puts "Playering #{song}"
      end
    end
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  # Show user command options
  help

  while true
    puts "Please enter a command:"
    response = gets.chomp
    if response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    elsif response == "exit"
      exit_jukebox
      break
    end
  end
end
