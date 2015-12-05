# Code Reading:

# Defining a method called fizzbuzz and its parameter of num
def fizzbuzz(num)
	# Case tests a condition and a set of possible matches
  case
  # These are the possible matches where if the parameter of num is divided by a 15/3/5
  # and has a remainder of 0 (modulus) then "Fizzbuzz"/"Fizz"/"Buzz" will be result or else...
  when num % 15 == 0 then "FizzBuzz"
  when num % 3  == 0 then "Fizz"
  when num % 5  == 0 then "Buzz"
  #... or else num itself is the result
  else num
  end
end

# Defining a method called fizz_buzz_to and its parameter of limit
def fizz_buzz_to(limit)
	# From 1 up to the variable limit number of times, loop num to print each number up to
	# num (above) through the fizzbuzz method - meaning that the modulus rules above apply
  1.upto(limit).each do |num|
    puts fizzbuzz(num)
  end
end

# Used to test - here it prints 3 times up to the number 5
# Result: 1, 2, Fizz
fizzbuzz(5)
fizz_buzz_to(3)

# Used to test - here it prints 5 times up to the number 3
# Result: 1, 2, Fizz, 4, Buzz
# However it passes 3 in this example and continues up to 5 though because the upto limit is 5
fizzbuzz(3)
fizz_buzz_to(5)


# Coding:

# Create a class called "Homework"
class Homework

	# Add a method called "shout" that takes a string as a parameter and returns it in all caps
	def shout(shout_word)
		return shout_string.upcase
	end

	# Add a method called "repeat_string" that takes two parameters and prints the string
	# the number of times of the integer
	def repeat_string(repeat_word, repeat_integer)
		i=repeat_integer
		i.times do |item|
			puts repeat_word
	end




		i = 0
		if (i = repeat_integer)
			break
		else
			i += 1
			puts repeat_word
		end
	end

end

#test = Homework.new


#shout("hi")
#repeat_string("hi", 5)

