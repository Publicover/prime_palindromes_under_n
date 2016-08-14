prime_array = [2]
counter = 2
possible_prime = 3

puts "\nWhat's the upper limit of the prime palindromes you want to see?\n"
n_primes_limit = gets.chomp

while prime_array[-1] < n_primes_limit.to_i
  loop do
    if counter == (possible_prime + 1) / 2 && possible_prime.to_s == (possible_prime.to_s).reverse
      prime_array << possible_prime
      possible_prime += 2
      counter = 3
    elsif possible_prime % counter != 0
      counter += 1
    else
      counter = 3
      possible_prime += 2
      break
    end
  end
end

prime_array.pop

puts "\nArray of palindromes under #{n_primes_limit} coming your way:"
puts "\n"
print prime_array
puts "\n"
puts "\nUse this knowledge for the power of good."
puts "\n"
