--[[
	Lexicographic permutations
	Problem 24

	사전식 순서 조합 찾기
--]]

-- init NUMBER_LIST data

local NUMBER_LIST = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }
--local NUMBER_LIST = {'a', 'b', 'c'}

-- find and print ALL possibility
function PrintAllLexicographicPermutations(targetList)
	local function printList(list)
		local arr = '['
		for i=1,#list do
			arr = arr .. list[i] .. ' ' 
		end 
		arr = arr .. ']'
		print(arr)
	end
	local function iter(dstList, srcList, targetCount)
		if #dstList == targetCount then
			printList(dstList)
		else
			for i=1,#srcList[1] do
				if srcList[1][i] == 0 then
					number = srcList[2][i]
					srcList[1][i] = 1
					table.insert(dstList, number)
				
					iter(dstList, srcList, targetCount)
				
					table.remove(dstList)
					srcList[1][i] = 0
				end
			end
		end
	end
	
	local dstList = {}
	local srcList = {}
	local count = #targetList
	
	srcList[1] = {}
	srcList[2] = {}
	for i=1, #targetList do
		srcList[1][i] = 0
	end
	for i=1, #targetList do
		srcList[2][i] = targetList[i]
	end
	
	iter(dstList, srcList, count)
	
end

-- find and print ONE possibility by index
function FindLexicographicPermutationsByIndex(targetList, targetIndex)
	local function printList(list)
		local arr = '['
		for i=1,#list do
			arr = arr .. list[i]
		end 
		arr = arr .. ']'
		print(arr)
	end
	local function iter(dstList, srcList, count, index)
		if #dstList == count then
			if index == 1 then
				printList(dstList)
			end
			index = index - 1
		else
			for i=1,#srcList[1] do
				if srcList[1][i] == 0 then
					number = srcList[2][i]
					srcList[1][i] = 1
					table.insert(dstList, number)
				
					index = iter(dstList, srcList, count, index)
				
					table.remove(dstList)
					srcList[1][i] = 0
				end
			end
		end
		return index
	end
	
	local dstList = {}
	local srcList = {}
	local targetCount = #targetList
	
	srcList[1] = {}
	srcList[2] = {}
	for i=1, #targetList do
		srcList[1][i] = 0
	end
	for i=1, #targetList do
		srcList[2][i] = targetList[i]
	end
	
	iter(dstList, srcList, targetCount, targetIndex)
	
end

-- problem solve
--PrintAllLexicographicPermutations(NUMBER_LIST)
FindLexicographicPermutationsByIndex(NUMBER_LIST,1000000)