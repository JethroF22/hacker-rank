def bomberMan(n, grid)
	bombs = {}
	grid.each_with_index do |row, i|
		row.split("").each_with_index do |square, j|
			if square == "O"
				bombs[[i, j]] = 1
			end
		end
	end
	puts bombs
	
end