
function sumOfDecimalsInDigit(digit)
	total = 0
	for i=1,#digit do
		total = total + tonumber(digit:sub(i,i))
	end
	return total
end

function digitComp(digit_a, digit_b)
	local compResult = 1
	if digit_a:sub(1,1) == '-' and digit_b:sub(1,1) == '-' then
		
	end
	return compResult
end

function digitSum(digit_A, digit_B)
	local function SumOfDigit(digitOneStr, digitTwoStr, carryStr)
		local carryNum = 0
		local digitOneNum = 0
		local digitTwoNum = 0
		local digitSumNum = 0
		local digitSumStr = ""
		
		if carryStr ~= nil and tonumber(carryStr) then
			carryNum = tonumber(carryStr)
		end
		if digitOneNum ~= nil and tonumber(digitOneStr) then
			digitOneNum = tonumber(digitOneStr)
		end
		if digitTwoStr ~= nil and tonumber(digitTwoStr) then
			digitTwoNum = tonumber(digitTwoStr)
		end
		
		digitSumNum = digitOneNum + digitTwoNum + carryNum
		digitSumStr = tostring( digitSumNum )
		
		if digitSumNum >= 10 then 
			return digitSumStr:sub(2,2), digitSumStr:sub(1,1)
		else
			return digitSumStr:sub(1,1), '0'
		end
	end
	
	local length_A = #digit_A
	local length_B = #digit_B
	local index_A = length_A
	local index_B = length_B
	local index_Total = 0
	
	local digitOne = '0'
	local digitTwo = '0'
	local digitCarray = '0'
	local digitSum = '0'
	
	local digitTotalStr = ""
	
	while index_A > 0 or index_B > 0 do
		if index_A > 0 then
			digitOne = digit_A:sub(index_A,index_A)
		else
			digitOne = '0'
		end
		if index_B > 0 then
			digitTwo = digit_B:sub(index_B,index_B)
		else
			digitTwo = '0'
		end
		digitSum, digitCarray = SumOfDigit(digitOne,digitTwo,digitCarray)
		digitTotalStr = digitTotalStr .. digitSum
		
		index_A = index_A - 1
		index_B = index_B - 1
		index_Total = index_Total + 1
	end
	
	if digitCarray ~= nil and tonumber(digitCarray) > 0 then
		digitTotalStr = digitTotalStr .. digitCarray
	end
	
	return digitTotalStr:reverse()
end

function digitSub(digit_a, digit_b)
	local function SubOfDigit(digit_a, digit_b, digit_carry)
		print(digit_a, digit_b, digit_carry)
		local num_carry, num_a, num_b = 0,0,0
		local result_num, result_carry = 0,0
		local result_digit_value, result_digit_carry = '0', '0'
		
		if digit_a~=nil and digit_b~=nil and digit_carry~=nil then
			num_a = tonumber(digit_a)
			num_b = tonumber(digit_b) + tonumber(digit_carry)
		
			if num_a >= num_b + num_carry then
				print("num_a > num_b")
				num_carry = 0
				num_result = num_a - num_b
			else
				print("num_a <= num_b")
				num_carry = 1
				num_result = 10 + num_a - num_b
			end
			
			result_digit_value = tostring(num_result)
			result_digit_carry = tostring(num_carry)
		end
		
		return result_digit_value, result_digit_carry
	end
	
	if digit_a==nil or digit_b==nil then return '0' end
	
	local total_positive = true
	if digitComp(digit_a,digit_b) < 0 then digit_a, digit_b = digit_b, digit_a; total_positive = false end
	
	local total = ""
	lengthOfDigit_a, lengthOfDigit_b = #digit_a, #digit_b
	index_a, index_b = lengthOfDigit_a,lengthOfDigit_b
	
	a = '0'
	b = '0'
	carry = '0'
	sum = '0'
	
	while index_a > 0 or index_b > 0 do
		if index_a > 0 then
			a = digit_a:sub(index_a,index_a)
		else
			a = '0'
		end
		if index_b > 0 then
			b = digit_b:sub(index_b,index_b)
		else
			b = '0'
		end
		
		sub,carry = SubOfDigit(a,b,carry)
		print(sub,carray)
		total = total .. sub
		
		index_a = index_a - 1
		index_b = index_b - 1
	end
	
	if carry ~= nil and tonumber(carry) > 0 then
		digit = total .. carry
	end

	total = tostring( tonumber(total:reverse()) )
	if total_positive == false then total = '-' .. total end
	return total
end


function digitMul(a,n)
	if a==nil or n==nil then return '0' end
	total = "0"
	for i=1,n do
		total = digitSum(total,a)
	end
	return total
end

function digitPower(digit,power)
	local total = '1'
	if digit == nil or power == nil then
		return '0'
	end
	if #power == 1 and power:sub(1,1) == '0' then
		return total
	end
	
	for i=1,power do
		total = digitMul(total,digit)
	end

	return total
end

function digitFactorial(n)
	if n == nil or tonumber(n) < 1 then return '0' end
	local total = '1'
	for i=1,n do
		total = digitMul(total,i)
	end
	return total
end