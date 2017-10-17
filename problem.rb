# => EXERCISE 1
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

p convert_song_new_array(song)

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

p convert_song_original_array(song)

# => EXERCISE 2
# Write a method to that converts this array
#
# [ {a: 5, b: 5},
#     {a: 3, b: 4},
#     {a: 2, b: 0},
#     {a: 2, b: 1}]
# into this array of sums:
#
# [10, 7, 2, 3]

new_h = [ {a: 5, b: 5},
  {a: 3, b: 4},
  {a: 2, b: 0},
  {a: 2, b: 1}]

def convert_hash_to_sum_array(h)
  h.map { |nums| nums.values.sum }
end

p convert_hash_to_sum_array(new_h)
