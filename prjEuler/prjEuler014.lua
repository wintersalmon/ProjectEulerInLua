--[[
	Longest Collatz sequence
	Problem 14
	
	백만(1,000,000) 이하의 수로 시작했을 때 1까지 도달하는데 가장 긴 과정을 거치는 숫자를 구하는 문제
	
	n → n/2 (n is even)
	n → 3n + 1 (n is odd)
	n == 1 END
--]]
function LongestCollatzSequence(MAX_NUMBER)
	local maxCount = 0
	local curCount = 0
	local startNumber = 0
	for i=1,MAX_NUMBER do
		curCount = getCollatzSequence(i)
		if curCount > maxCount then
			maxCount = curCount
			startNumber = i
		end
	end
	return startNumber, maxCount
end

function getCollatzSequence(number)
	if number <= 0 then return 0 end
	local count = 1
	while number>1 do
		if number%2==0 then
			number = number / 2
		else
			number = (3 * number) + 1
		end
		count = count + 1
	end
	return count
end

function prjEuler014()
	INPUT = 1000000
	
	OUTPUT = LongestCollatzSequence(INPUT)
	
	print(OUTPUT)
end

prjEuler014()
