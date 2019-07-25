# write your code here

# Function that handles translating a word to its pig latin equivalent
def pig_latin_word word

  vowels = ['a', 'e', 'i', 'o', 'u']

  if word[0,2] == 'qu'
    first_letters = word[0,2]
    word = word[2, word.length-1] + first_letters + 'ay'

  elsif word[0,3] == 'squ'
    first_letters = word[0,3]
    word = word[3, word.length-1] + first_letters + 'ay'

  elsif vowels.include? word[0]
    word += "ay"

  elsif vowels.include? word[1]
    first_letter = word[0]
    word = word[1, word.length-1] + first_letter + 'ay'

  elsif vowels.include? word[2]
    first_letters = word[0,2]
    word = word[2, word.length-1] + first_letters + 'ay'

  else
    first_letters = word[0,3]
    word = word[3, word.length-1] + first_letters + 'ay'

  end

  word
end

# Actual method to pass tests
def translate phrase

  words = phrase.split(' ')
  pig_latin_phrase = []

  words.each do |i|
    pig_latin_phrase << pig_latin_word(i)
  end

  pig_latin_phrase.join(' ')
end