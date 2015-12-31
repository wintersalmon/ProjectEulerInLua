--[[
	1000-digit Fibonacci number
	Problem 26
	
	d 를 1000 이하의 정수라고 할 때, 단위분수 1/d 의 순환마디가 가장 긴 수는 무엇입니까?
	
	진행중
	
	1/20 을 계산할때 table.insert 연산으로 인해서 자릿수가 제대로 표현되지 않는 문제가 발생한다.
--]]

function commonFactionToDecimalFraction(a,b)
	list_decimal = {}
	local divider = 0
	local dividedBy = 0
	local leftOver = 0
	local index = 0
	
	if b == 0 then
		list_decimal[#list_decimal] = 0
		return list_decimal
	end
	if a == b then
		list_decimal[#list_decimal] = 1
		return list_decimal
	end
	
	divider = b
	leftOver = a
	while leftOver ~= 0 do
		print(leftOver)
		if leftOver >= divider then
			dividedBy = leftOver / divider
			leftOver = leftOver % divider
			table.insert(list_decimal, math.floor(dividedBy))
		end
		leftOver = leftOver * 10
		index = index + 1
	end
	return list_decimal
end

function printDecimalFraction(d_list)
	if d_list == nil then
		print('nil');
	elseif #d_list == 0 then
		print(d_list[0])
	else
		str = '0.'
		for i=1,#d_list do
			str = str .. d_list[i]
		end
		print(str)
	end
end

a = 1
b = 20
list = nil

list = commonFactionToDecimalFraction(a,b)
print(a .. '/' .. b)
printDecimalFraction(list)
