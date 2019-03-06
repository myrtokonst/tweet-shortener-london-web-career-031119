# Write your code here.
def dictionary
  dic = {
    "hello"=> "hi",
    "to" => "2",
    "two"=> "2", 
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
 new_array=[]
 array = tweet.split(" ")
 for i in array do 
   all_i = i.downcase
 dictionary.each do |key,value|
 if all_i == key
   i = value
 end
 end
 new_array.push(i)
 end
 new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  for tweet in tweets do 
    word_substituter(tweet)
     puts word_substituter(tweet)
  end
end 

def selective_tweet_shortener(tweet) 
    if tweet.length > 140
      word_substituter(tweet)
    else  tweet
end 
end

def shortened_tweet_truncator(tweet)
  sub_tweet= selective_tweet_shortener(tweet)
  if sub_tweet.length > 140
   return sub_tweet[1..135] + "..."
 else return sub_tweet
 end
 end