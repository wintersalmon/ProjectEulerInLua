--[[
	Maximum path sum I
	Problem 18

	피라미드형 타워를 밑으로 내려가면서 경로에 있는 숫자들의 합을 모두 더할때
	최대의 값이 나오는 경로의 값은 얼마인지 구하는 프로그램
--]]

PATH = {
{75},
{95, 64},
{17, 47, 82},
{18, 35, 87, 10},
{20, 04, 82, 47, 65},
{19, 01, 23, 75, 03, 34},
{88, 02, 77, 73, 07, 63, 67},
{99, 65, 04, 28, 06, 16, 70, 92},
{41, 41, 26, 56, 83, 40, 80, 70, 33},
{41, 48, 72, 33, 47, 32, 37, 16, 94, 29},
{53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14},
{70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57},
{91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48},
{63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31},
{04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23}
}

function MaximumPathSum(targetList)
	if #targetList < 2 then return 0 end
    local totalList = {}
    
    for i=1,#targetList do
    	totalList[i] = {}
    	for j=1, #targetList[i] do
    		totalList[i][j] = targetList[i][j]
    	end
    end    
    
    totalList[1][1] = targetList[1][1];
    for i=2,#targetList do
    	for j=1,#targetList[i] do
    		compNumOne = totalList[i-1][j-1]
    		compNumTwo = totalList[i-1][j]
    		addNum = 0
    		if compNumOne == nil then
    			addNum = compNumTwo
    		elseif compNumTwo == nil then
    			addNum = compNumOne
    		elseif compNumOne >= compNumTwo then
    			addNum = compNumOne
    		else
    			addNum = compNumTwo
    		end
    		totalList[i][j] = targetList[i][j] + addNum
    	end
    end
    
    maxDepth = #totalList
    total = totalList[maxDepth][1]
    for i=2,#totalList[maxDepth] do
    	if total < totalList[maxDepth][i] then
    		total = totalList[maxDepth][i]
    	end
    end
    
    return total
end

function prjEuler018()
	INPUT = PATH
	
	OUTPUT = MaximumPathSum(INPUT)
	
	print(OUTPUT)
end

prjEuler018()
