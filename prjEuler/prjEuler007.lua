--[[
	10001st prime
	Problem 7
	
	10001번째 소수를 구하는 문제
	
--]]

dofile('../include/Math.lua')

------------------------------------------------------
function prjEuler007()
	INPUT = 10001
	
	OUTPUT = getPrimeNumberByIndex(INPUT)
	
	print(OUTPUT)
end

prjEuler007()
