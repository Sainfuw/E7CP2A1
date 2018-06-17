h1 = { nombre: 'emilio', edad: 35, comuna: 'independenci', genero: 'masculino' }
h2 = { nombre: 'ximena', edad: 62, comuna: 'centro', genero: 'femenino' }
h3 = { nombre: 'nico', edad: 20, comuna: 'macul', genero: 'masculino' }
h4 = { nombre: 'caro', edad: 36, comuna: 'vitacura', genero: 'femenino' }
h5 = { nombre: 'claudio', edad: 25, comuna: 'vitacura', genero: 'masculino' }

alumnos = [h1, h2, h3, h4, h5]

def mostrar(alumnos)
  alumnos.each do |i|
    puts i
  end
end

def ingresar(alumnos)
  h = {}
  print('Ingrese nombre del alumnos: ')
  h[:nombre] = gets.chomp
  print('Ingrese edad del alumno: ')
  h[:edad] = gets.chomp.to_i
  print('Ingrese comuna del alumno: ')
  h[:comuna] = gets.chomp
  print('Ingrese genero del alumno: ')
  h[:genero] = gets.chomp
  alumnos << h
end

def buscar(alumnos)
  print('Ingrese el nombre del alumnos a editar: ')
  nombre = gets.chomp
  found = -1
  alumnos.each_with_index do |val, index|
    found = index if val[:nombre] == nombre
  end
  found
end

def editar(alumnos, found)
  print('Ingrese edad del alumno: ')
  alumnos[found][:edad] = gets.chomp.to_i
  print('Ingrese comuna del alumno: ')
  alumnos[found][:comuna] = gets.chomp
  print('Ingrese genero del alumno: ')
  alumnos[found][:genero] = gets.chomp
end

def comunas(alumnos)
  arr = []
  alumnos.each { |i| arr << i[:comuna].downcase }
  arr = arr.uniq
  print arr
end

def filtro_edades(alumnos)
  arr = []
  alumnos.each { |i| arr << i if i[:edad] >= 20 && i[:edad] <= 25 }
  print arr
end

def suma_edades(alumnos)
  sum = 0
  alumnos.each { |i| sum += i[:edad] }
  sum
end

def promedio_edades(alumnos)
  suma_edades(alumnos) / alumnos.length
end

def lista_x_genero(alumnos)
  male = []
  female = []
  alumnos.each do |i|
    i[:genero].casecmp('masculino').zero? ? male << i : female << i
  end
  puts("Hombres: #{male}")
  puts("Mujeres: #{female}")
end

# Main
opt = 0
while opt != 10
  system('clear')
  puts '0.- Mostrar alumnos'
  puts '1.- Ingresar alumno'
  puts '2.- Editar informacion'
  puts '3.- Eliminar alumno'
  puts '4.- Total alumnos'
  puts '5.- Comunas'
  puts '6.- Edad entre 20 y 25'
  puts '7.- Suma de edades'
  puts '8.- Promedio de edades'
  puts '9.- Listas por genero'
  puts '10.- Salir'
  print 'Ingrese una opcion: '
  opt = gets.chomp.to_i
  case opt
  when 0
    mostrar(alumnos)
    gets
  when 1
    ingresar(alumnos)
    gets
  when 2
    found = buscar(alumnos)
    if found == -1
      print 'El alumno no existe'
    else
      editar(alumnos, found)
      puts('Alumno editado correctamente')
    end
    gets
  when 3
    found = buscar(alumnos)
    if found == -1
      print ' El alumno no existe'
    else
      alumnos.delete_at(found)
      puts('Alumno eliminado correctamente')
    end
    gets
  when 4
    puts("La cantidad total de alumnos es  de: #{alumnos.length}")
    gets
  when 5
    comunas(alumnos)
    gets
  when 6
    filtro_edades(alumnos)
    gets
  when 7
    sum = suma_edades(alumnos)
    print("La suma total de las edades es: #{sum}")
    gets
  when 8
    prom = promedio_edades(alumnos)
    print("El promedio de edades de los alumnos es: #{prom}")
    gets
  when 9
    lista_x_genero(alumnos)
    gets
  end
end
puts 'Programa terminado'
