# Write your code here.
def dictionary
  dict_hash = {
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
  # Convert the tweet into an array to
  # iterate over every word in a tweet and compare it to the hash keys
  string_array = string.split(" ")
  dict_keys = dictionary.keys

  string_array.each_with_index do |word, index|
    dict_keys.each do |key|
      if word == key || word == key.capitalize
        # grab key's value and place it in the index of string_array
        string_array_index = index

        dict_value_as_array = dictionary.values_at(key)
        dict_value_as_string = dict_value_as_array.join # only one element

        string_array[string_array_index] = dict_value_as_string
      end
    end
  end

  #construct output string
  output_string = string_array.join(" ")

  return output_string

end


def bulk_tweet_shortener(array_of_tweets)
  # takes in an array of tweets, iterates
  # over them, shortens them, and puts out the results to the screen
  output_array = []
  dict_keys = dictionary.keys

  array_of_tweets.each do |tweet_string|

    string_array = tweet_string.split(" ")

    string_array.each_with_index do |word, index|
      dict_keys.each do |key|
        if word == key || word == key.capitalize
          # grab key's value and place it in the index of string_array
          string_array_index = index

          dict_value_as_array = dictionary.values_at(key)
          dict_value_as_string = dict_value_as_array.join # only one element

          string_array[string_array_index] = dict_value_as_string
        end
      end
    end
    output_string = string_array.join(" ")
    puts output_string

    output_array.push(output_string)
  end
end

def selective_tweet_shortener(string)
  if string.length > 140
    return word_substituter(string)
  else
    string
  end
end

def shortened_tweet_truncator(string)
  shortened_string = word_substituter(string)

  if shortened_string.length > 140
    output_string = shortened_string[0..136]
    3.times do
      output_string += "."
    end

    return output_string
  else
    return string

  end
end
