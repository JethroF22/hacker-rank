# View problem description at: https://www.hackerrank.com/challenges/plus-minus/problem

def plusMinus(arr)
	negative_count = 0
	positive_count = 0
	zero_count = 0
	arr.each do |num|
		num > 0 ? positive_count += 1 : num == 0 ? zero_count += 1 : negative_count += 1
	end

	puts "%.6f" % (positive_count.to_f / arr.length.to_f )
	puts "%.6f" % (negative_count.to_f / arr.length.to_f )
	puts "%.6f" % (zero_count.to_f / arr.length.to_f )
end