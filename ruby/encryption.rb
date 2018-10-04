def encryption(s)
	string = s.split("").reject {|char| char == " "}.join
	sqrt_len = Math.sqrt(string.length)
	puts "sqrt_len: #{sqrt_len}"
	rows = sqrt_len.floor
	cols = sqrt_len.ceil
	if rows * cols < string.length
		rows < cols ? rows = cols : cols = rows
	end
	s_index = 0
	grid = []

	rows.times do |i|
		row = []
		cols.times do |j|
			row << string[s_index]
			s_index += 1
		end
		grid << row
	end


	output = ""
	cols.times do |j|
		rows.times do |i|
			char = grid[i][j]
			if !char
				break
			end
			output += char 
		end
		output += " "
	end
	output
end