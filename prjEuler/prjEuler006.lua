--[[
	Sum square difference
	Problem 6
	
	1 부터 20 사이의 수에 대한 [합의 제곱] 과 [제곱의 합] 에 대한 차를 구하는 문제
	
	12 + 22 + ... + 102 = 385			: sum of the squares
	(1 + 2 + ... + 10)2 = 552 = 3025	: square of the sum
--]]

------------------------------------------------------
function getSumOfSquares(num)
	local total = 0
	for i=1, num do
		total = total + (i * i)
	end
	return total
end

function getSquareOfSum(num)
	local total = 0
	total = (num * (num+1) ) / 2
	total = total * total
	return total
end

------------------------------------------------------
function prjEuler006()
	INPUT = 20
	
	OUTPUT = getSquareOfSum(INPUT)
	OUTPUT2 = getSumOfSquares(INPUT)
	
	print(OUTPUT - OUTPUT2)
end

prjEuler006()
