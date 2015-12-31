--[[
	Lattice paths
	Problem 15
	
	 20 × 20 격자에 있는 경로의 수를 구하는 문제
	 
	 digit 나누기 빼기가 미완성이여서 그냥 계산기로 풀었다......
--]]
dofile('../include/math.lua')
dofile('../include/digit.lua')


---[[
local n = '40'
local r = '20'

--local total = getFactorialOfDigit(n) / ( getFactorialOfDigit(r) * getFactorialOfDigit(n-r) )
--print(total)

v1 = digitFactorial('40')
v2 = digitFactorial('20')
print('40! == ' .. v1)
print('20! == ' .. v2)
print('answer is nCr ( n=40, r=20)')
print('answer is n! / r! * (n-r)! ( n=40, r=20)')

--]]



function something(n, r)
	n_fact = digitFactorial(tostring(n))
	r_fact = digitFactorial(tostring(r))
	
	
end

function prjEuler015()
	INPUT_N = 40
	INPUT_R = 20
	
	
	OUTPUT = something(INPUT_N, INPUT_R)
	
	print(OUTPUT)
end

prjEuler015()
