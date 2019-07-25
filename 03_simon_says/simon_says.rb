#write your code here
def echo simon_says
  simon_says
end

def shout the_shout
  the_shout.upcase
end

def repeat word, num_of_times = nil
  result_sentence = word

  if num_of_times != nil
    num_of_times = num_of_times - 1

    num_of_times.times do
      result_sentence = result_sentence + " #{word}"
    end
  else
    result_sentence = result_sentence + " #{word}"
  end

  result_sentence
end

def start_of_word word, length
  word[0..length - 1]
end

def first_word input
  words = input.split

  if words[0] == "Hello"
    return "Hello"
  elsif words[0] == "oh"
    return "oh"
  end
end

def titleize input
 words = input.split
 new_string = []

  index = 0

  words.each do |i|
  if (i == "and" or i == "the" or i == "over") and index != 0
    new_string << i
  else
    new_string << i.capitalize
  end
  index = index + 1
 end

 new_string.join(" ")
end

puts titleize "jaws"