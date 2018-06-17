a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# Ejercicio1
b = a.map { |i| i + 1 }
print b
puts

# Ejercicio2
b = a.map(&:to_f)
print b
puts

# Ejercicio3
b = a.map(&:to_s)
print b
puts

# Ejercicio4
b = a.reject { |i| i < 5 }
print b
puts

# Ejercicio4
b = a.select { |i| i <= 5 }
print b
puts

# Ejercicio5
b = a.inject(:+)
print b
puts

# Ejercicio6
b = a.group_by { |i| i % 2 }
print b
puts

# Ejercicio7
b = a.group_by { |i| i < 6 }
print b
puts
