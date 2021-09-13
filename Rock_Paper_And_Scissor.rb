require 'rainbow'
a = 0
b = 0
c = 0
loop do
  puts "escolha um dos numeros \n\ 1-tesoura \n\ 2-papel \n\ 3-pedra \n\ 0-sair \n"
  print 'opções:'
    opções = gets.chomp.to_i

    case opções
    when 1
        tesoura = 2
        papel = 1 
        pedra = 3 
        resultado = 2 - rand(1..3)
    when 2
        papel = 2
        tesoura = 3
        pedra = 1
        resultado = 2 - rand(1..3)
    when 3 
        pedra = 2
        tesoura = 1
        papel = 3
        resultado = 2 - rand(1..3) 
    when 0
        break
    else
    puts Rainbow('resultado invalido').red
  end
  system 'clear'
    if resultado == 1
      puts Rainbow('Você venceu').green
      a += 1

    elsif resultado == 0
    puts Rainbow('Empatou').cyan
    b += 1

    elsif resultado == -1
    puts Rainbow('você perdeu').red
    c += 1
    end
    puts "Vitorias:#{a}\n Empates:#{b}\n Derrotas:#{c}" 
end
