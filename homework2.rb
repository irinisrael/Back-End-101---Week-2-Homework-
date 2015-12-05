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

	# Used to test hash
	array1 = ["New Year's Day", "Groundhog Day", "April Fool's Day", "Memorial Day", "Independence Day", "Labor Day", "Halloween", "Thanksgiving"]
	array2 = ["1/1/15", "2/2/15", "4/1/15", "5/25/15", "7/4/15", "9/7/15", "10/31/15", "11/26/15"]
	calendar(array1, array2)




