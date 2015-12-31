--[[
	Largest prime factor
	Problem 3
	
	[600851475143] 의 [소인수] 중에서 가장 큰 소인수를 구하는 문제

--]]

dofile('../include/getPrimeFactorList.lua')
dofile('../include/list/listGetMax.lua')

function prjEuler003()
	INPUT = 600851475143
	
	list = getPrimeFactorList(INPUT)
	OUTPUT = listGetMax(list)
	
	print(OUTPUT)
end

prjEuler003()