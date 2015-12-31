-- List

-- returns max value within list
function listGetMax(list)
	local max = list[1]
	for i=1,#list do
		if list[i] > max then
			max = list[i]
		end
	end
	return max
end

function listSortInAscOrder(list)
	for i=1,#list-1 do
		for j=i+1,#list do
			if list[i] > list[j] then
				list[i], list[j] = list[j], list[i]
			end
		end
	end
end

function listSortInDesOrder(list)
	for i=1,#list-1 do
		for j=i+1,#list do
			if list[i] < list[j] then
				list[i], list[j] = list[j], list[i]
			end
		end
	end
end