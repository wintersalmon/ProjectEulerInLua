-- returns TARGET_NUMBER's Prime Factor List
function getPrimeFactorList(TARGET_NUMBER)
	div = 1
	curNumber = TARGET_NUMBER
	primeFactorList = {}
	repeat
		if curNumber % div == 0 then
			curNumber = curNumber / div
			table.insert(primeFactorList, div)
		end
		div = div + 1
	until curNumber == 1
	if primeFactorList[1] == 1 then
		table.remove(primeFactorList,1)
	end
	return primeFactorList
end