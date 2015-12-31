--[[
	Quadratic primes
	Problem 27
	
	0부터 시작하는 연속된 n에 대해 가장 많은 소수를 만들어내는 2차식을 찾아서, 그 계수 a와 b의 곱을 구하세요.
	
	n^2 + a^n + b   (단 | a | < 1000, | b | < 1000)

--]]
dofile("../include/math.lua")
dofile("../include/QuadraticEquation.lua")

function P027_QuadraticPrimes()
	local max_a = 0
	local max_b = 0
	local max_count = 0
	local cur_count = 0
	
	for a=-999,999 do
		for b=-999,999 do
			cur_count = 0
			x = 0
			while true do
				y = getValueOfQuadraticEquation(1,a,b,x)
				if y > 1 and isPrime(y) then
					cur_count = cur_count + 1
					x = x + 1
				else
					break
				end
			end
			if cur_count > max_count then
				max_a = a
				max_b = b
				max_count = cur_count
			end
		end
	end
	print( max_a, max_b)
	return max_a * max_b
end

function prjEuler027()
	--INPUT = 1000
	
	OUTPUT = P027_QuadraticPrimes()
	
	print(OUTPUT)
end

prjEuler027()
