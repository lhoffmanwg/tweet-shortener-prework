def dictionary
 substitution_hash = {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
 
   return substitution_hash
end  

def word_substituter(tweet)
  tweet_ary = []
  tweet_ary = tweet.split(" ")
  tweet_ary.collect  do |word|
    dictionary.fetch(word.downcase, word)
  end  
  .join(" ") 
end  

def bulk_tweet_shortener(tweets_ary)
  tweets_ary.each do |tweet|
    puts word_substituter(tweet)
  end
end  

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    return word_substituter(tweet) 
  end  
  return tweet
end  

def shortened_tweet_truncator(tweet)
  word_substituter(tweet)
  if tweet.size > 140
    tweet = tweet[0...137] << "..."
  end  
  return tweet
end  

