--[[
	Names scores
	Problem 22

	names.txt에 들어있는 모든 이름의 점수를 계산해서 더하면 얼마입니까?
	
	먼저 모든 이름을 알파벳 순으로 정렬합니다.
	각 이름에 대해서, 그 이름을 이루는 알파벳에 해당하는 숫자(A=1, B=2, ..., Z=26)를 모두 더합니다.
	여기에 이 이름의 순번을 곱합니다.
	
	...
	total = idx * ( a_value * a_count + b_value * b_count + ... z_value * z_count )
	...
	
	파일 입출력
	라인 패턴 검색
	키테이블 생성, 초기화, 접근
	등을 사용함
--]]

--function that read's file and returns its content
function readAll(file)
    local f = io.open(file, "rb")
    local content = f:read("*all")
    f:close()
    return content
end

-- raead content from a file and then put '%s' into a table('lines')
local content = readAll('prjEuler022.txt')
local lines = {}
for word in string.gmatch(content, "%a+") do table.insert(lines,word) end
table.sort(lines)

--create a table with aplphabet KeyValues
alphaCountTableKey = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'}
alphaCountTableValue = { type = 'alphaCountTableKey'}

-- set all table value 0 (use keyvalue to aproach)
for i,k in ipairs(alphaCountTableKey) do
	alphaCountTableValue[k] = 0
end

-- for every line add all the alphabet letter to the count table with amount of index
for idx, l in ipairs(lines) do
	for i=1,#l do
		letter = l:sub(i,i)
		alphaCountTableValue[letter] = alphaCountTableValue[l:sub(i,i)] + idx
	end
end

--[[
total = 0
for i,k in ipairs(alphaCountTableKey) do
	total = total + i * alphaCountTableValue[k]
end

for i=1,#lines do print(lines[i]) end
--]]

function prjEuler022()
	INPUT = 10000
	
	total = 0
	for i,k in ipairs(alphaCountTableKey) do
		total = total + i * alphaCountTableValue[k]
	end
	OUTPUT = total
	
	print(OUTPUT)
end

prjEuler022()

