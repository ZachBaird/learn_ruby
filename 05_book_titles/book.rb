class Book
# write your code here
  def title
    @title
  end

  def title=(new_title)
    @title = titleize(new_title)
  end

  def titleize string
    words = string.split.map do |word|
      if ["and", "the", "over", "in", "of", "a", "an"].include? word
        word
      else
        word.capitalize
      end
    end

    words[0].capitalize!

    words.join(" ")
  end
end
