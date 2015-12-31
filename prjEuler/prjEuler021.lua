--[[
	Amicable numbers
	Problem 21

	10000 이하의 친화수들을 모두 찾아서 그 합을 구하세요.
--]]

function getProperDivisorsOfNum(num)
	divisorList = {}
	for i=1,num/2 do
		if num%i==0 then
			divisorList[#divisorList+1] = i
		end
	end
	return divisorList
end

function SumOfProperDivisors(num)
	divisors = getProperDivisorsOfNum(num)
	total = 0
	for i=1,#divisors do
		total = total + divisors[i]
	end
	return total
end

function AmicableNumbers(num)
	amicableNumList = {}
	for i=2,num do
		sumOfDivisorsOne = SumOfProperDivisors(i)
		sumOfDivisorsTwo = SumOfProperDivisors(sumOfDivisorsOne)
		if i == sumOfDivisorsTwo and i ~= sumOfDivisorsOne then
			amicableNumList[i] = true
			amicableNumList[sumOfDivisorsOne] = true
			print(i .. ',' .. sumOfDivisorsOne)
		end
	end
	total = 0
	for i=1,num do
		if amicableNumList[i] then
			total = total + i
		end
	end
	return total
end

function prjEuler021()
	INPUT = 10000
	
	OUTPUT = AmicableNumbers(INPUT)
	
	print(OUTPUT)
end

prjEuler021()
