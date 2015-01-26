puts 'Это игра Ним, название сложное, а правила легкие.'
puts 'У нас 2 игрока, вы и я.'
puts 'Всего 21 конфета. За раз можно брать от 1 до 5 конфет.'
puts 'Кто взял последний, тот и выиграл.'
candies=21

while candies!=0 do
	puts 'Ваш ход. Осталось ' + candies.to_s + ' конфет.'
	puts 'Введите количество конфет которые вы забираете(от 1 до 5):'
	take = gets.to_i
	candies = candies - take

	if candies==0
		puts 'Вы победили.'
		break
	end

	puts 'Вы взяли '+take.to_s+' конфет. Осталось ' + candies.to_s + ' конфет.'
	
	if candies >5 
		take = rand(4)+1
	else
		take = candies
	end

	candies = candies - take
	puts 'Я взял '+take.to_s+' конфет. Осталось '+candies.to_s+'.'

	if candies == 0
		puts 'Я победил. Ура.'
		break
	end
end
