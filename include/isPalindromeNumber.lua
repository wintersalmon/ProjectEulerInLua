-- returns true if the number is palindromic
function isPalindromeNumber(number)
	num_str = tostring(number)
	num_str_reverse = string.reverse(num_str)
	if num_str == num_str_reverse then
		return true
	else
		return false
	end
end

-- A palindromic number reads the same both ways.
-- ex) 9009, 1001, 8888, ...