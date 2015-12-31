-- QuadraticEquation functions

function getValueOfQuadraticEquation(a,b,c,x)
	local y = 0
	y = a*x*x + b*x + c
	return y
end


--[[
for a=1,10 do
	for b=1,10 do
		for c=1,10 do
			for x=1,10 do
				str = ''
				str = str .. a .. 'X^2 + '
				str = str .. b .. 'X + '
				str = str .. c .. ' = '
				str = str .. getValueOfQuadraticEquation(a,b,c,x)
				print( str )
			end
		end
	end
end
--]]