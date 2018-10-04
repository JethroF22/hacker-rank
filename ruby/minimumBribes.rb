def minimumBribes(q)
  num_bribes = 0
  skip_by = 0
  chaotic = false
  q.each_with_index do |e, i|
    if (e != i + 1)
      diff = e - (i + 1)
      if diff > 2
        chaotic = true
      elsif skip_by > 0
        skip_by -= 1
      else
        skip_by = diff
        num_bribes += diff
      end
    end
  end
  if chaotic
    puts "Too chaotic"
  else
    puts num_bribes
  end
end