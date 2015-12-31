-- Math
--[[
	isPrime(number) : number
	
--]]

function isPrime(num)
	return isPrimeNumberCheckByRoot(num)
end

function LCM(number_a, number_b)
	return getLeastCommonMultiple(number_a, number_b)
end

function GCD(number_a, number_b)
	return getGreatestCommonDivisor_2(number_a, number_b)
end

function getDivisorList(number)
	list = {}
	
	if number == 1 then
		table.insert(list,1)
	else
		div = 1
		repeat
			if number % div == 0 then
				table.insert(list,div)
			end
			div = div + 1
		until div == number
	end
	return list
end

function getFactorial(number)
	if number == nil or number < 1 then return 0 end
	local total = 1
	for i=1,number do
		total = total * i
	end
	return total
end

function getCombination(n,r)
	if n==nil or r==nil or n<1 or r<1 or n<r then return 0 end
	total = getFactorial(n) / ( getFactorial(r) * getFactorial(n-r) )
	return total
end

function getPermutation(n,r)
	if n==nil or r==nil or n<1 or r<1 or n<r then return 0 end
	total = getFactorial(n) / getFactorial(n-r)
	return total
end

-- Prime Factorization
-- returns TARGET_NUMBER's Prime Factor List
function getPrimeFactorizationList(num)
    local list = {1}
    if num < 1 then return {} end
    if num==1 then return list end
    local target = num
    for i=2,num do
        while target%i==0 do
            target = target / i
            list[#list+1] = i
        end
    end
    return list
end

-- Factorization
-- returns TARGET_NUMBER's Factor List
function getFactorizationList(TARGET_NUMBER)
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

function getPrimeNumberByIndex(index)
--[[
	어떤 수가 소수인지를 확인 할 때에 그 수가
		이전까지 나온 소수로 나누어 떨어지면 소수가 아니고
		나누어 떨어지지 않느면 소수이다
	이 방법을 10001번 반복한다.
--]]
	local function cannotBeDividedWithList(num,list)
		for i=1,#list do
			if num%list[i]==0 then
				return false
			end
		end
		return true
	end
	local function isPrimeNumber(number)
	local target = number;
	for i=1,number-1 do
		if target%i == 0 then
			target = target / i
		end
	end
	if target == number then return true end
		return false
	end
	
	local count = 0
	local curNumber = 1
	local primeNumList = {}
	while count < index do
		curNumber = curNumber + 1
		if cannotBeDividedWithList(curNumber,primeNumList) then
			count = count + 1
			primeNumList[#primeNumList+1] = curNumber
		end
	end
	return curNumber
end

function isPythagoreanTriplet(a, b, c)
	if a < b then a,b = b,a end
	if a < c then a,c = c,a end
	if a < b then a,b = b,a end
	
	if a * a == b * b + c * c then return true
	else return false end
end


------------------------------------------------------------------------------------------

function isPrimeNumberCheckByRoot(number)
	rootNum = number --convert to root
	div = math.floor(math.sqrt(rootNum))
	while number%div ~= 0 do div = div - 1 end
	if div == 1 then return true end
	return false
end

function isPrimeNumber(number)
	local target = number;
	for i=1,number-1 do
		if target%i == 0 then
			target = target / i
		end
	end
	if target == number then return true end
	return false
end

function getLeastCommonMultiple(number_a, number_b)
	return number_a * number_b / GCD(number_a,number_b)
end

function getGreatestCommonDivisor(number_a, number_b)
	if number_a == 0 and number_b == 0 then
		return 0
	end
	number_gcd = 1
	list_a = getDivisorList(number_a)
	list_b = getDivisorList(number_b)
	for a=1,#list_a do
		hasNumber = 0
		for b=1,#list_b do
			if list_a[a] == list_b[b] then
				hasNumber = 1
			end
		end
		if hasNumber == 1 and list_a[a] > number_gcd then
			number_gcd = list_a[a]
		end
	end
	return number_gcd
end

function getGreatestCommonDivisor_2(number_a, number_b)
	local function iter_gcd(a,b)
		if a < b then a,b = b,a end
		
		if a == b then
			return a
		elseif a > b then
			return iter_gcd(a-b, b)
		else
			return iter_gcd(a, b-a)
		end
	end
	if number_a > 0 and number_b > 0 then
		return iter_gcd(number_a, number_b)
	else
		return 0
	end
end
