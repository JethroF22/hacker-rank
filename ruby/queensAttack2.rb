def queensAttack(n, k, r_q, c_q, obstacles)
	if n == 1
		return 0
	end

	directions = [
		[-1, -1],
		[0, -1],
		[1, -1],
		[1, 0],
		[1, 1],
		[0, 1],
		[-1, 1],
		[-1, 0]
	]	

	moves = 0
	directions.each do |direction|
		current_position = [r_q, c_q];
		while true
			next_r = current_position[0] + direction[0]
			next_c = current_position[1] + direction[1]
			index_out_of_bounds = (
				next_r <= 0 || next_r > n || next_c <= 0 || next_c > n
			)
			if index_out_of_bounds || (obstacles.include? [next_r, next_c])
				break
			end
			moves += 1
			current_position = [next_r, next_c]
		end
	end

	moves
end