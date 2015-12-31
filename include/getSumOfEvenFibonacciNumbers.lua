-- function that returns sum of all even fib number less then MAX_NUMBER
function getSumOfEvenFibonacciNumbers(MAX_NUMBER)
	local total = 2
	local prev = 1
	local curr = 2
	local nextValue = 0
	repeat
		nextValue = prev + curr
		prev = curr
		curr = nextValue
		if curr%2 == 0 then
			total = total + curr
		end
	until curr > MAX_NUMBER
	return total
end
