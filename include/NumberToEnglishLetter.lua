
function NumberToEnglishLetter(number)
	local MIN = 1
	local MAX = 1000

	local digit_0X_to_9X = {'', 'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety' };
	local digit_X0_to_x9 = {'', 'one', 'two', 'three', 'four', 'five', 'six' ,'seven', 'eight', 'nine'};
	local digit_11_to_19 = {'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen' ,'seventeen', 'eighteen', 'nineteen'};
	local digit_1_to_9 = {'', 'one', 'two', 'three', 'four', 'five', 'six' ,'seven', 'eight', 'nine'};

	local function twoDigitToLetter(number)
		local digitString = ''
		if number > 0 and number < 100 then
			if number>=11 and number <= 19 then 
				digitString = digitString .. digit_11_to_19[number - 10]
			else
				digitString = digitString .. digit_0X_to_9X[math.floor(number/10) + 1]
				digitString = digitString .. digit_X0_to_x9[math.floor(number%10) + 1]
			end
		end
		return digitString
	end

	local function threeDigitToLetter(number)
		local digitString = ''
		if number > 0 and number < 1000 then
			if number < 100 then
				digitString = digitString .. twoDigitToLetter(number%100)
			else
				digitString = digitString .. digit_1_to_9[math.floor(number/100) + 1] .. 'hundred'
				if number%100 ~= 0 then
					digitString = digitString .. 'and' .. twoDigitToLetter(number%100)
				end
			end
		end
		return digitString
	end
	
	if number < MIN then return 0
	elseif number < 1000 then return threeDigitToLetter(number)
	elseif number == MAX then return 'onethousand'
	end
end
