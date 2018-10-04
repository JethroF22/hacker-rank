def diagonalDifference(arr)
	row_len = arr[0].length
	diagonals = [0, 0]
	[1, -1].each_with_index do |col_direction, i|
		x = 0
		y = col_direction == 1 ? 0 : row_len - 1
		diagonal_sum = 0
		row_len.times do ||
			diagonals[i] += arr[x][y]
			x += 1
			y += col_direction
		end
	end

	(diagonals[0] - diagonals[1]).abs
end