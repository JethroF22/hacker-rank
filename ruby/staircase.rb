# View problem description at: https://www.hackerrank.com/challenges/staircase/problem?h_r=next-challenge&h_v=zen

def staircase(n)
	output = ""
	n.times do |i|
		output += " " * (n - (i + 1)) + "#" * (i + 1) + "\n"
	end
	print output
end