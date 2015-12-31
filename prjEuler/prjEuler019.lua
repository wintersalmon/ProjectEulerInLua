--[[
	Counting Sundays
	Problem 19

	20세기 (1901년 1월 1일 ~ 2000년 12월 31일) 에서, 매월 1일이 일요일인 경우는 총 몇 번입니까?
--]]

dofile('../include/date.lua')

function CountingSundays(startYear, endYear)
	curDay = 1
	sundayCount = 0
	for year=startYear,endYear do
		for month=1,12 do
			if curDay%7 == 1 then
				sundayCount = sundayCount + 1
			end
			curDay = curDay + GetDaysOfMonth(year,month)
		end
	end
	return sundayCount
end

function prjEuler019()
	INPUT_START = 1901
	INPUT_END = 2000
	
	OUTPUT = CountingSundays(INPUT_START, INPUT_END)
	
	print(OUTPUT)
end

prjEuler019()
