--[[
	Highly divisible triangular number
	Problem 12
	
	500개 이상의 약수를 가지는 가장 작은 삼각수는 ? 

	n 번째 삼각수 : n * (n + 1 ) / 2
--]]

function getNumberOfDivisor(number)
	count = 0
	sqrt = math.floor( math.sqrt(number) )
	
	for div=1,sqrt do
		if number%div == 0 then
			count = count + 2
		end
	end
	
	if sqrt * sqrt == number then
		count = count - 1
	end
	
	return count
end

function getTriangleNumberByIndex(index)
	if index < 1 then return 0 end
	return (index * (index + 1) ) / 2
end

function HighlyDivisibleTriangularNumber(targetSize)
	if targetSize == nil then return 0 end

	curIndex = 1
	curSize = 0
	triNum = 0
	repeat
		triNum = math.floor(getTriangleNumberByIndex(curIndex))
		curSize = getNumberOfDivisor(triNum)
		curIndex = curIndex + 1
	until curSize > targetSize
	
	return triNum
end

function prjEuler012()
	INPUT = 500
	
	OUTPUT = HighlyDivisibleTriangularNumber(INPUT)
	
	print(OUTPUT)
end

prjEuler012()

