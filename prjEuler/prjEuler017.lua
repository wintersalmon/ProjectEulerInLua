--[[
	Number letter counts
	Problem 17
	
	1부터 1,000까지 영어로 썼을 때는 모두 몇 개의 글자를 사용해야 할까요?
	
	function that translates number to english letter
	it currently works only between
	
	MIN
	to
	MAX
	
	NumberToLetter( number ) : String
--]]

dofile('../include/NumberToEnglishLetter.lua')

function CountLettersInEnglishNumberInBetween(start_num, end_num)
	count = 0
	for i=start_num, end_num do
		count = count + #NumberToEnglishLetter(i)
	end
	return count
end

function prjEuler017()
	INPUT = 1
	INPUT2 = 1000
	
	OUTPUT = CountLettersInEnglishNumberInBetween(INPUT, INPUT2)
	
	print(OUTPUT)
end

prjEuler017()