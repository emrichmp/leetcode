# Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

# Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

 

# Example 1:

# Input: x = 123
# Output: 321
# Example 2:

# Input: x = -123
# Output: -321
# Example 3:

# Input: x = 120
# Output: 21
# Example 4:

# Input: x = 0
# Output: 0
 

# Constraints:

# -231 <= x <= 231 - 1

#First answer - doesn't handle negative input
# def reverse(x)
#     return arr = x.to_s.chars.map(&:to_i).reverse.join.to_i
# end

#Second answer - handles negative output but adds a 0
# def reverse(x)
#     if x >= 0
#         arr = x.to_s.chars.map(&:to_i).reverse.join.to_i
#         puts(arr)
#     else
#         arr = x.to_s.chars.map(&:to_i)
#         arr.shift
#         arr = -(arr.reverse.join.to_i)
#         puts(arr)
#     end
# end

# call = reverse(-321)

#Final Answer - works, doesn't handle the bit thing, got too stuck and frustrated with it
def reverse(x)
    if x >= 0
        return arr = x.to_s.chars.map(&:to_i).reverse.join.to_i
    else
        arr = x.to_s.chars.map(&:to_i)
        return arr.shift
    end
end