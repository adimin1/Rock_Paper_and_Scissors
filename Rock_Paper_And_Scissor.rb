require 'rainbow'
victories = 0
draws = 0
defeats = 0
loop do
  puts "choose one of the objects\ns-scissors\np-paper\nr-rock"
  print 'option:'
  pc = 'srp'[rand(3)]
  player = gets.chomp

 case [player, pc]
  
  when ['r','s'], ['s','p'], ['p','r']
    puts "You chose #{player}, PC chose #{pc}"
    puts Rainbow("You win").green
    victories += 1

  when ['r','r'], ['s','s'], ['p','p']
    puts "You chose #{player}, PC chose #{pc}"
    puts Rainbow('Draws').cyan
    draws += 1

  when ['s','r'], ['p','s'], ['r','p']
    puts "You chose #{player}, PC chose #{pc}"
    puts Rainbow('You lost').red
    defeats += 1
  end

  puts "do you wish to continue? \n1-yes\n2-no"
  continue = gets.chomp.to_i

  case continue
  when 1
    system 'clear'

  when 2
    puts "Victories:#{victories}\ndraws:#{draws}\nDefeats:#{defeats}" 
    break
  end
end
