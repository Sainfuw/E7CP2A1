## Ejercicio 2: Arrays y strings
# Dado el arreglo
nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]

# Ejercicio1
aux = nombres.select { |i| i.length <= 5 }
print aux
puts

# Ejercicio2
aux = nombres.map(&:downcase)
print aux
puts

# Ejercicio3
aux = nombres.select { |i| i[0] == 'P' }
print aux
puts

# Ejercicio4
aux = nombres.map(&:length)
print aux
puts

# Ejercicio5
aux = nombres.map { |i| i.gsub(/[AEIOUaeiou]/, '') }
print aux
puts
