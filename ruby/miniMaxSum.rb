# View problem description at: https://www.hackerrank.com/challenges/mini-max-sum/problem

def miniMaxSum(arr)
	sums = []
	arr.length.times do |i|
		ints = []
		arr.each_with_index do |elem, j|
			if i != j
				ints.push elem
			end
		end
		sums.push ints.reduce(0, :+)
	end

	puts "%d %d" % [sums.min, sums.max]
end
