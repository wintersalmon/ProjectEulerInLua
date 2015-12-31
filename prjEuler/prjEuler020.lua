--[[
	Factorial digit sum
	Problem 20

	100! 의 자리수를 모두 더하면 얼마입니까?
--]]

dofile("../include/digit.lua")

function FactorialDigitSum(number)
	digit = digitFactorial(number)
	return sumOfDecimalsInDigit(digit)
end

function prjEuler020()
	INPUT = 100
	
	OUTPUT = FactorialDigitSum(INPUT)
	
	print(OUTPUT)
end

prjEuler020()
