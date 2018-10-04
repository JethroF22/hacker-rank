def appendAndDelete(s, t, k)
	substr_len = 0
	s.length.times do |i|
		if s[i] == t[i]
			substr_len += 1
		else
			break
		end
	end
	if (t.length == substr_len)
		(s.length - substr_len <= k) ? "Yes" : "No"
	else
		num_changes = s[substr_len..-1].length + t[substr_len..-1].length
		num_changes <= k ? "Yes" : "No"
	end
end

appendAndDelete("ashley", "ashlin", 3)