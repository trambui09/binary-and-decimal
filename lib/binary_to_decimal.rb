# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# method to turn binary to decimal
def binary_to_decimal(binary_array)
  decimal = 0
  reversed_binary = binary_array.reverse
  reversed_binary.each_with_index do |binary, index|
    decimal += (binary * (2 ** index))
  end
  return decimal
end

# method to turn decimal into an array of binary digits
def decimal_to_binary(num)
  binary_array = []
  until num == 0
    # prepend will add the new value to the front, instead of the end
    binary_array.prepend(num % 2)
    num /= 2
  end
  return binary_array
end

