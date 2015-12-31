

function isLeapYear(year)
	if year%4==0 and (year%100~=0 or year%400==0) then
		return true
	end
	return false
end

function GetDaysOfMonth(year,month)
	dayCountListByMonth = {31,28,31,30,31,30,31,31,30,31,30,31}
	days = 0
	if month < 1 or month > 12 then
		days = 0
	else
		days = dayCountListByMonth[month]
		if month==2 and isLeapYear(year) then
			days = days + 1
		end
	end
	return days
end
