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
   for tweet in tweets do 
    word_substituter(tweet)
     puts word_substituter(tweet)
  end 
end 