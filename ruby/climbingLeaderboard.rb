# View problem description at: https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem

def climbingLeaderboard(scores, alice)
	alice_ranks = []
	alice_current_rank = nil
	scores = scores.uniq

	alice.each do |alice_score|
		scores << alice_score
		scores = scores.uniq.sort.reverse
		if alice_current_rank
			scores.delete_at alice_current_rank			
		end
		alice_current_rank = scores.index(alice_score) + 1

		alice_ranks << alice_current_rank
	end

	alice_ranks
end