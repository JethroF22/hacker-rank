def timeInWords(h, m)
	numbers = {
		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "nine",
		10 => "ten",
		11 => "eleven",
		12 => "twelve",
		13 => "thirteen",
		14 => "fourteen",
		16 => "sixteen",
		17 => "seventeen",
		18 => "eighteen",
		19 => "nineteen",
		20 => "twenty",
	}

	hour = m > 30 ? numbers[h + 1] : numbers[h]
	if m == 0
		return "%s o' clock" % hour
	else
		conjunction = m <= 30 ? "past" : "to"
		if m == 30
			return "half %s %s" % [conjunction, hour] 
		else
			m = m > 30 ? 60 - m : m
			minutes = m % 15 == 0 ? "quarter"  : m > 20 ? "twenty %s" % numbers[m - 20] : numbers[m]
			return "%s%s %s %s" % [minutes, (m % 15 == 0 ? "" : m == 1 ?  " minute" : " minutes"), conjunction, hour] 
		end
	end
end