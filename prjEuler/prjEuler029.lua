--[[
	Distinct powers
	Problem 29
	
문제:

풀이 :

--]]

function isPerfectSquareNumber(number)
	sqrt_num = math.sqrt(number)
	floor_sqrt_num = math.floor(sqrt_num)
	if sqrt_num == floor_sqrt_num then
		return true
	else
		return false
	end
end

function getPerfectRootNumber(number)
	
end

function P029_DistinctPowers(MIN, MAX)
	local function setField(field,index_a,index_b)
		while isPerfectSquareNumber(index_a) do
			index_a = math.floor(math.sqrt(index_a))
			index_b = index_b * 2
		end
		field[index_a][index_b] = true
	end
	
	local FIELD = {}
	
	if MIN == nil or MAX == nil or MIN > MAX then return -1 end
	
	for i=MIN,MAX do
		FIELD[i] = {}
	end
	
	for a=MIN,MAX do
		for b=MIN,MAX do
			setField(FIELD,a,b)
			--[[
			index_a = a
			index_b = b
			while isPerfectSquareNumber(index_a) do
				index_a = math.floor(math.sqrt(index_a))
				index_b = index_b * 2
			end
			--print(index_a,index_b)
			markField[index_a][index_b] = true
			--]]
		end
	end
	
	TOTAL = 0
	for i=MIN,MAX do
		LINE_TOTAL = 0
		for j=1,#FIELD[i] do
			if FIELD[i][j] == true then
				LINE_TOTAL = LINE_TOTAL + 1
			end
		end
		print(i,LINE_TOTAL)
		TOTAL = TOTAL + LINE_TOTAL
	end
	return TOTAL
end

function prjEuler029()
	INPUT_MIN = 2
	INPUT_MAX = 100
	--[[
	for i=2,100 do
		if isPerfectSquareNumber(i) then
			print(i)
		end
	end
	--]]
	OUTPUT = P029_DistinctPowers(INPUT_MIN, INPUT_MAX)
	
	print(OUTPUT)
end

prjEuler029()
