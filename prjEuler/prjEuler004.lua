--[[
	Largest palindrome product
	Problem 4
	
	두개의 [3자리수]의 곱으로 만든 최대의 [대칭수(palindrome)]를 구하는 문제
	
	A palindromic number reads the same both ways.
	The largest palindrome made from the product of two 2-digit numbers is 
		9009 = 91 × 99.
	Find the largest palindrome made from the product of two 3-digit numbers.

--]]

dofile('../include/isPalindromeNumber.lua')

function getLargestPalindromicNumberMadeFromProductOfThreeDigitNumbers()
	max = 0
	for a=100,999 do
		for b=100,999 do
			num = a * b
			if isPalindromeNumber(num) and num > max then
				max = num
			end
		end
	end
	return max
end

function prjEuler004()
	INPUT = 9009
	
	OUTPUT = getLargestPalindromicNumberMadeFromProductOfThreeDigitNumbers(INPUT)
	
	print(OUTPUT)
end

prjEuler004()