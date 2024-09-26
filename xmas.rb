# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️
# ##########  DAYS BEFORE XMAS ###########
# 🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️🎄⭐️

# Write a method which returns the number of days until next Xmas
# using TDD (Test driven development)

# Opt1: return number of days for any date!
# Opt2: make it work after Dec 25th

# ########################################
# FOCUS ON THE METHOD
# ########################################
#        ____________
#  [IN] | (params)   |  [OUT]
# ----->|   method   |---------->
#  args |____________| returned
#                       value

# Method signature (params? returned value?):
# - name: days_until_xmas
# - params: 1 param (Date)
# - returned: Integer

# ########################################
# LIVECODE
# ########################################

# PSEUDOCODE
# 0. require date
# 1. define xmas (Date) store in a variable
# 2. define today (Date) store in a variable
# 3. Substract the two dates, convert to Integer
# 4. return

# CODE
require "date"

def days_until_xmas(date = Date.today)
  # today = Date.today
  xmas = Date.new(2024, 12, 25)
  days = (xmas - date).to_i
  return days < 0 ? days + 365 : days
end

# TESTS
# Hint: write tests considering that the method exists
puts "-- Test 4 ⭐️ -- "
puts "Result: "
puts days_until_xmas(Date.new(2024, 12, 26)) == 364

puts "-- Test 1 ⛄️ -- "
puts "Result: "
puts days_until_xmas == 90

puts "-- Test 2 🎄 -- "
puts "Result: "
puts days_until_xmas.class == Integer

puts "-- Test 3 🤶 -- "
puts "Result: "
puts days_until_xmas <= 365
