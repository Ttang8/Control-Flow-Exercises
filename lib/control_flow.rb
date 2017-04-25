# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
  new_str = ""
  str.each_char { |ch| new_str << ch unless ch == ch.downcase}
  new_str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
  mid_idx = (str.length / 2.0).floor
  if str.length.even?
    return str[mid_idx - 1,2]
  else
    return str[mid_idx]
  end

end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
  count = 0
  VOWELS.each { |ch| count += 1 if str.include?(ch)}
  count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
  arr = (1..num).to_a
  ans = 1
  arr.each { |el| ans *= el}
  ans
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
  new_str = ""
  arr.each { |el| new_str += el + separator}
  unless separator == ""
    return new_str[0...-1]
  end
  new_str
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
  new_str = ""
  str.chars.each_with_index do |ch, idx|
    if idx.odd?
      new_str += ch.upcase
    else
      new_str += ch.downcase
    end
  end
  new_str
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
  new_arr = []
  str.split.each do |word|
    if word.length >= 5
      new_arr << word.reverse
    else
      new_arr << word
    end
  end
  new_arr.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
  arr = (1..n).to_a
  ans = []

  arr.each do |int|
    if int % 3 == 0 && int % 5 != 0
      ans << "fizz"
    elsif int % 5 == 0 && int % 3 != 0
      ans << "buzz"
    elsif int % 15 == 0
      ans << "fizzbuzz"
    else
      ans << int
    end

  end

  ans
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
  arr.sort.reverse
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
  arr = (1..num).to_a
  count = 0

  arr.each { |int| count += 1 if num % int == 0}

  return true if count == 2
  false
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
  arr = (1..num).to_a
  ans = []

  arr.each { |int| ans << int if num % int == 0}
  ans
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
  ans = []
  factors(num).each { |int| ans << int if prime?(int)}

  ans

end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
  prime_factors(num).length

end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
  odd_arr = []
  even_arr = []

  arr.each do |int|
    odd_arr << int if int.odd?
    even_arr << int if int.even?
  end

  if odd_arr.length == 1
    return odd_arr[0]
  end
  even_arr[0]    
end
