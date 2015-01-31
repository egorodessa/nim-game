puts 'This game called Nim. The name is strange, but the rules are easy.'
puts 'We have two players: you and me.'
puts 'We have 21 candies at the center of the table. For every turn each can take only 1-5 candies.'
puts 'The last players which take candies is winners. Start!'
candies=21

while candies!=0 do
	puts 'There are ' + candies.to_s + ' candies left. Your turn.'
	puts 'Write your choose (1-5 candies):'
	take = gets.to_i
	candies = candies - take

	if candies==0
		puts 'You are win.'
		break
	end

	puts 'You took '+take.to_s+' candies. There are ' + candies.to_s + ' candies left.'
	
	if candies >5 
		take = rand(4)+1
	else
		take = candies
	end

	candies = candies - take
	puts 'I took '+take.to_s+' candies. There are '+candies.to_s+' candies left.'

	if candies == 0
		puts 'I am winner!'
		break
	end
end
