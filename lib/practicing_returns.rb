require 'pry'


#COLLECT METHOD: IN ACTION
#Here, yield is receiving the execution from calling out the method or function to do something for us. For example, one is an array of numbers to be multiplied by 2(execution of method call) and this execution runs on every iteration of a given array. One benefit to this is that you can create a loop function (i.e, while) and calling(yielding) the function to do various options (i.e. you can call the function to what execution? putting a name inside the string "Hi, Tim" or multiply numbers by 2 separate from each other. 

# a unified loop method is like hammer, yield keyword is like connecting methods to calls; You calling the hammer to hit a nail or break someone's head, but all of these actions are using a hammer as a unified tool to do(execute)different things.Yield create that functionality:

# ACTIONS:
def hello(array)
  i = 0
  name_collection = []
  number_collection = []
  while i < array.length
    name_collection.push(yield(array[i]))
    number_collection.push(yield(array[i]))
    
    i += 1
  end
  name_collection
  number_collection
  binding.pry
end

#OBJECTIVES:
hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }


hello([1,2,3,4]){|number| "your number is: #{number*2}"}
# binding.pry
