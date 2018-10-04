def extraLongFactorials(n)
	prod = 1
	n.times do |num|
		prod *= (num + 1)
	end
	puts prod
end

extraLongFactorials(45)