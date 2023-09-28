# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️
# ##########  DAYS BEFORE XMAS ###########
# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️


# Write a method which 
# returns the number of days until next Xmas
# using TDD (Test driven development)

# Opt1: return number of days for any date!
# Opt2: make it work after Dec 25th


#        ____________   
#  [IN] | (params)   |  [OUT]
# ----->|   method   |----------> 
#  args |____________| returned
#                       value 

# Method name: days_until_xmas
# Method signature (params? returned value?):
# params: no params (but day, month, year for opt1)
# returned: integer


# Code
# First, we have to require date 
# We need to make a method definition
# no parameters
# Define today
# Define Xmas day
# Return Xmas - Today
# Change to integer 
require "date"

def days_until_xmas(someday = Date.today)
  # today = Date.today
  xmas = Date.new(someday.year,12,25)
  return (xmas - someday).to_i 
end

# Tests
# consider that the method exists
# puts "-- Test 1 ⛄️ -- "
puts "should return an integer"
puts "Result:"
puts days_until_xmas().class == Integer

# puts "-- Test 2 🎄 -- "
puts "should return 88 today"
puts "Result:"
puts days_until_xmas == 88

puts "-- Test 3 🎅 -- "
puts "should return 0 on Xmas day"
puts "Result:"
puts days_until_xmas(Date.new(2021,12,25)) == 0

# puts "-- Test 4 🎅 -- "

# puts "-- Test 5 🎅 -- "
