def compareTriplets(a, b)
	total_points = [0, 0]

	a.zip(b).each_with_index do |points|
		if points[0] > points[1]
			total_points[0] += 1
		elsif points[0] < points[1]
			total_points[1] += 1
		end
	end

	total_points
end