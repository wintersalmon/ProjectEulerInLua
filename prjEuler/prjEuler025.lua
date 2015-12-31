--[[
	1000-digit Fibonacci number
	Problem 25
	
	피보나치 수열에서 값이 처음으로 1000자리가 되는 것은 몇번째 항입니까?
--]]

dofile('../include/digit.lua')

function findFirstNdigitFibonacciNumber(digit_length)
	local digit_prev = '1'
	local digit_cur  = '1'
	local digit_next = '0'
	local index = 2
	while #digit_cur ~= digit_length do
		digit_next = digitSum(digit_prev,digit_cur)
		digit_prev = digit_cur
		digit_cur = digit_next
		index = index + 1
	end
	return index
end

function prjEuler025()
	INPUT = 1000
	
	OUTPUT = findFirstNdigitFibonacciNumber(INPUT)
	
	print(OUTPUT)
end

prjEuler025()