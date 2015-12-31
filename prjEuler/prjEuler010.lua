--[[
	Summation of primes
	Problem 10
	
	이백만(2,000,000) 이하 소수의 합을 구하는 문제
--]]

dofile('../include/math.lua')

function SummationOfPrimes(limit_number)
	if limit_number < 1 then return 0 end
	
	local bIsPrimeList = {}
	local sumOfPrime = 2
	local sqrtOfLimit = math.floor(math.sqrt(limit_number))

	for i=1,limit_number do
		bIsPrimeList[i] = true
	end
	
	for div=2,sqrtOfLimit do
		if isPrimeNumberCheckByRoot(div) then bIsPrimeList[div] = true end
		for i=div*2,limit_number,div do 
			bIsPrimeList[i] = false
		end
	end

	for i=3, limit_number,2 do
		if bIsPrimeList[i] then sumOfPrime = sumOfPrime + i end
	end
	return sumOfPrime
end

function prjEuler010()
	INPUT = 2000000
	
	OUTPUT = SummationOfPrimes(INPUT)
	
	print(OUTPUT)
end

prjEuler010()
