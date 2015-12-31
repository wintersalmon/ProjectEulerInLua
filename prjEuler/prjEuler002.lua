--[[
	Even Fibonacci numbers
	Problem 2
	
	[4백만] 보다 작은 [짝수] 피보나치 수열의 합을 구하는 문제

--]]

dofile('../include/getSumOfEvenFibonacciNumbers.lua')

function prjEuler002()
	INPUT = 4000000
	OUTPUT = getSumOfEvenFibonacciNumbers(INPUT)
	print(OUTPUT)
end

prjEuler002()