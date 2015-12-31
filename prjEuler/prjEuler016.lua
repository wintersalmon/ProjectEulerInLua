--[[
	Power digit sum
	Problem 16

	2^1000의 각 자리수를 모두 더한 값을 구하는 문제
--]]
dofile('../include/digit.lua')

function PowerDigitSum(n, p)
	digit = digitPower(tostring(n), tostring(p))
	total = 0
	for i=1, #digit do
		total = total + digit:sub(i,i)
	end
	return total
end

function prjEuler016()
	INPUT = 2
	INPUT2 = 1000
	
	OUTPUT = PowerDigitSum(INPUT, INPUT2)
	
	print(OUTPUT)
end

prjEuler016()
