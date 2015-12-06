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
	# From 1 up to the variable limit number of times, loop to print each number
	# through the fizzbuzz method - meaning that the modulus rules above apply
  1.upto(limit).each do |num|
    puts fizzbuzz(num)
  end
end

# Used to test
puts fizzbuzz(45)
# Result: FizzBuzz

# Used to test
puts fizzbuzz(2)
# Result: 2

# Used to test
puts fizzbuzz(5)
# Result: Buzz

# Used to test
fizz_buzz_to(3)
# Result: 1, 2, Fizz

# Used to test
fizz_buzz_to(5)
# Result: 1, 2, Fizz, 4, Buzz


# Coding:

# Create a class called "Homework"
class Homework

	# Add a method called "shout" that takes a string as a parameter and returns it in all caps
	def shout(shout_word)
		return shout_word.upcase
	end

	# Add a method called "repeat_string" that takes two parameters and prints the string
	# the number of times of the integer
	def repeat_string(repeat_word, repeat_integer)
		repeat_integer.times do
			puts repeat_word
		end
	end

	# Create a method (calendar) that takes two arrays as parameters
	# The first should be names of holidays as strings
	# The second should be dates as strings
	# The method returns a Hash where the keys are the names from the first array and the keys
	# are the corresponding datess from the second array
	
	def calendar(holiday_names, holiday_dates)

		holidays_hash = {}

		n = 0
		m = 0

		y = holiday_names.length

		y.times do
			holidays_hash[(holiday_names[n])] = holiday_dates[m]
			n += 1
			m += 1
		end

		return holidays_hash

	end

end

# Create a new instance of the Homework class and call each method
test = Homework.new

puts test.shout("you talkin to me?")

test.repeat_string("hi", 12)

array1 = ["New Year's Day", "Groundhog Day", "April Fool's Day", "Memorial Day", "Independence Day", "Labor Day", "Halloween", "Thanksgiving"]
array2 = ["1/1/15", "2/2/15", "4/1/15", "5/25/15", "7/4/15", "9/7/15", "10/31/15", "11/26/15"]
puts test.calendar(array1, array2)


# Questions:

# 1.

# An instance variable is notated as @variable_name.
# They can only be referenced within the class methods.
# But they live on past the call of the method and can be referenced
# by any method of the class (as opposed to local variables that are
# local to the method).
# They belong to one class (while class variables are shared between
# a given class and its subclasses.)

# 2. 

# even? and odd? are methods of the Integer class.
# even? returns true if the integer is an even number, false if not.
# odd? returns true if the integer is an odd number, false if not.
