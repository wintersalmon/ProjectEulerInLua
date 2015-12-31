--[[
	Special Pythagorean triplet
	Problem 9
	
	a + b + c = 1000 를 만족하는 피타고라스 수의 abc 를 구하는 문제
	
	A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2	
--]]

dofile('../include/math.lua')

function SpecialPythagoreanTriplet(number)
	max = 0
	for a=1,number/2 do
		left = number - a
		b = a + 1
		c = left - b
		while b < c do
			if isPythagoreanTriplet(a,b,c) then	-- Math.isPythagoreanTriplet
				product = a * b * c
				if product > max then
					max = product
				end
			end
			b = b + 1
			c = c - 1
		end
	end
	return max
end

function prjEuler009()
	INPUT = 1000
	
	OUTPUT = SpecialPythagoreanTriplet(INPUT)
	
	print(OUTPUT)
end

prjEuler009()
