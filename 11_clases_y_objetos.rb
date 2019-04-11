# clases y objetos

puts "1. Clase Persona: "
puts ""
class Persona
  #Metodo de clase
  def self.suggested_names
    ["Oscar", "Diana", "David", "Milena"]
  end

  #El constructor de la clase es el siguiente
  #ASe uytiliza la palabra 'def' para definir los metodos
  def initialize(nombre, edad) #Metodo de instancia
    @nombre = nombre #Variable de instancia se inicializa con el parametro en el constructor
    @edad = edad
  end

  # persona.name = "Jaiden"
  # self => Hace referencia a la misma instancia para 
  # poder encadenar varios llamados. Ejemplo:
  # (persona.name = "Jaiden").edad = 7
  def nombre=(nombre) #Metodo de instancia
    @nombre = nombre
    self
  end

  def nombre
    @nombre
  end 
  #No se necesita utilizar la palabra 'return' porque todos 
  #los metodos retornan algo. Entonces si no se utiliza 'return'
  #Ruby va a retornar la ultima instrucción del metodo en un bloque
  #de instrucciones.

  def edad=(edad) #Metodo de instancia
    @edad = edad
    self
  end

  def edad #Metodo de instancia
    @edad
  end
end

puts "Llamada del metodo de clase: "
puts Persona.suggested_names
puts ""
matz = Persona.new("Jaiden", 14)
puts "Llamada del metodo de instancia: "
puts matz.nombre
puts matz.edad
matz.nombre = "Alfredo"
puts matz.nombre
puts ""

# con attr_accessor

puts "2. Clase Mascota: "
puts ""
class Mascota
  attr_accessor :nombre, :edad

  def self.suggested_names
    ["Haki", "Arnulfo", "Pedal", "Cateto"]
  end

  def initialize(nombre, edad)
    @nombre = nombre
    @edad = edad
  end
end

puts "Llamada del metodo de clase: "
puts Mascota.suggested_names
puts ""
milo = Mascota.new("Milo", 3)
puts "Llamada del metodo de instancia: "
puts milo.nombre
milo.edad = 14
puts milo.edad
puts ""

# con Struct
puts "3. Clase Empleo: "
puts ""
class Empleo < Struct.new(:nombre, :edad)
  def self.suggested_names
    ["Programador", "Arquitecto", "Abogado", "Exclavo"]
  end
end

puts "Llamada del metodo de clase: "
puts Empleo.suggested_names
puts ""
nuevo = Empleo.new("Frelance", 3)
puts "Llamada del metodo de instancia: "
puts nuevo.nombre
nuevo.edad = 14
puts nuevo.edad
puts ""

puts "4. Clase Empleado: "
puts ""
Empleado = Struct.new(:nombre, :edad) do
  def self.suggested_names
    ["Oscar", "Diana", "David", "Milena"]
  end
end

puts "Llamada del metodo de clase: "
puts Empleado.suggested_names
puts ""
nuevo = Empleado.new("Jaiden", 3)
puts "Llamada del metodo de instancia: "
puts nuevo.nombre
nuevo.edad = 14
puts nuevo.edad
puts ""
