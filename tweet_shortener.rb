require 'pry'

# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")

  i = 0
  while i < array.length
    curr_word = array[i].downcase
    if dictionary.key?(curr_word)
      array[i] = dictionary[curr_word].to_s
      # binding.pry
    end
    i = i + 1
  end
  final_string = array.join(" ")
  final_string

end

def bulk_tweet_shortener(tweet_array)
  i = 0

  while i < tweet_array.length
    string = tweet_array[i]
    temp_string = word_substituter(string)
    puts temp_string.to_s
    i = i + 1
  end
end

def selective_tweet_shortener(tweet)
  string = tweet
  if string.length > 140
    temp_string = word_substituter(string)
    return temp_string
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  modified_tweet = selective_tweet_shortener(tweet)
  final_tweet = modified_tweet.slice(0,140)
  final_tweet
end
