# Write a method that converts this array
#
# song = [["row", 3], ["your", 1], ["boat", 1]]
# to this one:
#
# ["row", "row", "row", "your", "boat"]

song = [["row", 3], ["your", 1], ["boat", 1]]


def convert_song_new_array(song)
  new_song = []

  song.each do |lyric| # -> ["row", 3]
    word = lyric[0]  # -> "row"
    number = lyric[1] # -> 3
    #puts word into new_song number times
    number.times do
      new_song << word
    end
  end
  return new_song
end

# puts convert_song_new_array(song)

# .map will transform a new array with the same number of results
# [["row", "row", "row"], ["your"], ["boat"]]
def convert_song_original_array(song)
  song.map! do |lyric|
    word = lyric[0]
    number = lyric[1]
  (word * number).scan(word) # returns an array of instanaces of word
  end
  song.flatten!
  return song
end

puts convert_song_original_array(song)
