--[[
	Smallest multiple
	Problem 5
	
	1 부터 [20] 사이의 모든 수로 [나누어 떨어지는] 가장 작은 수를 구하는 문제
--]]

dofile('../include/Math.lua')

------------------------------------------------------ my Method Functions
-- 1부터 number가지의 수들의 
function getSmallestMultiple(start_number, end_number)
	local total = 1
	for i=start_number,end_number do
		if isPrime(i) or total%i ~= 0 then
			list = getPrimeFactorizationList(i)
			listIdx = 1
			listSize = #list
			while total%i ~= 0 and listIdx <= listSize do
				total = total * list[listIdx]
				listIdx = listIdx + 1
			end
		end
	end
	return total
end

function methodUsingLCM(number)
	total = 1
	for i=1,number do
		total = LCM(i,total)
	end
	return total
end

function methodUsingPrimeFactorList(number)
	return getSmallestMultiple(1,number)
end

------------------------------------------------------
function prjEuler005()
	INPUT = 20
	
	OUTPUT = methodUsingLCM(INPUT)
	OUTPUT2 = methodUsingPrimeFactorList(INPUT)
	
	print('LCM', OUTPUT)
	print('PrimeFactorList', OUTPUT2)
end

prjEuler005()







