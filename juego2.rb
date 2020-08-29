section_i = "-" * 36
invalid_i = "X" * 36
end_i = "O" * 36

puts "#{section_i}\n\t Turno de jugador uno\n#{section_i}\n\t1.Piedra\t2.Papel\n\t3.Tijera\t4.Salir"
puts "\nJugador 1, ingrese el numero de su opción\n"
player1 = gets.to_i

while player1 > 4 || player1 < 1
    puts "\n#{invalid_i}\nEleccion invalida, las opciones son:\n\n1.Piedra\t2.Papel\n3.Tijera\t4.Salir"
    puts "\nJugador 1, ingrese el numero de su opción\n"
    player1 = gets.to_i
end

if player1 == 4
    puts "\n¡Hasta la proxima!"
else
    puts "#{section_i}\n\t Turno de jugador dos\n#{section_i}\n\t1.Piedra\t2.Papel\n\t3.Tijera\t4.Salir"
    puts "\nJugador 2, ingrese el numero de su opción\n"
    player2 = gets.to_i

    while player2 > 4 || player2 < 0 
        puts "\n#{invalid_i}\nEleccion invalida.\nLas opciones son:\n\n1.Piedra\t2.Papel\n3.Tijera\t4.Salir"
        puts "\nJugador 2, ingrese el numero de su opción\n"
        player2 = gets.to_i
    end
    
    if player2 == 4
        puts "\n¡Hasta la proxima!"
    else
        if player1 == 1 && player2 == 3 || player1 == 2 && player2 == 1 || player1 == 3 && player2 == 2
            puts "\n#{end_i}\n\tJugador 1 gana\n#{end_i}"
        elsif player1 == player2
            puts "\n#{end_i}\n\tEmpate\n#{end_i}"
        else
            puts "\n#{end_i}\n\tJugador 2 gana\n#{end_i}"
        end
    end
end