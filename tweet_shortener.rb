# Write your code here.
def dictionary
  dic = {
    "hello"=> "hi",
    "to, two, too" => "2",
    "for, four" => "4",
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
 dictionary.each do |key,value|
 if i == key
   i = value
 end
 new_array.push(i)
 i= i+1 
 end
 end
 new_array.join("")
end