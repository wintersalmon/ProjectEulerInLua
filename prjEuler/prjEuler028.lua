--[[
	Number spiral diagonals
	Problem 28
	
문제:
	숫자 1부터 시작해서 우측으로부터 시계방향으로 감아 5×5 행렬을 만들면 아래와 같이 됩니다.

	21 22 23 24 25
	20  7  8  9 10
	19  6  1  2 11
	18  5  4  3 12
	17 16 15 14 13

	여기서 대각선상의 숫자를 모두 더한 값은 101 입니다.
	같은 방식으로 1001×1001 행렬을 만들었을 때, 대각선상의 숫자를 더하면 얼마가 됩니까?
	
풀이 :
	3줄로 구성되는 (1층) 부터 한층씩 증가하면서 각 층의 모서리에 있는 4개의 수의 합을 구한다
	각 층을 증가시킬때마다 이전 층에서 사용한 숫자를 이용해서 각 층의 적절한 숫자를 구한다
	
--]]

function P028_NumberSpiralDiagonals(TARGET_ROW)
	local curRow = 3
	local curFloor = 1
	local curFloorStartNumber = 0
	local curFloorEndNumber = 0
	local prevFloorEndNumber = 1
	local TOTAL = 1
	
	while curRow <= TARGET_ROW do
		curFloorStartNumber = prevFloorEndNumber + curFloor * 2
		curFloorEndNumber = curFloorStartNumber + 6 * curFloor
		TOTAL = TOTAL + (4 * curFloorStartNumber + 12 * curFloor)
		
		prevFloorEndNumber = curFloorEndNumber
		curFloor = curFloor + 1
		curRow = 2 * curFloor + 1
	end
	
	return TOTAL
end

function prjEuler028()
	INPUT = 1001
	
	OUTPUT = P028_NumberSpiralDiagonals(INPUT)
	
	print(OUTPUT)
end

prjEuler028()
