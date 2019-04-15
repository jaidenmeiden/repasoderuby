
puts "Número 1:"
puts 100/3 == 100/3.0

puts ""
puts "Número 2:"
nombre = "pepe perez"
nombre.upcase.gsub("PEPE", "Pepito".swapcase) 
puts "Hola #{nombre}"

puts ""
puts "Número 3:"
puts (:simbolo.object_id == :simbolo.object_id) == ("simbolo".object_id == "simbolo".object_id) 

puts ""
puts "Número 4 (Mal):"
#if (edad == 20)
#    puts"Ahora tengo 20"
#else
#    puts"Tengo 10"
#end ```

puts ""
puts "Número 5:"
puts [[1,2,3], {a: "b"}, "pepe", ('a'...'z').to_a].count { |x| x.size > 2 }

puts ""
puts "Número 6:"
puts (1...5).include? 5

puts ""
puts "Número 7:"
puts 'bundle init'

puts ""
puts "Número 8:"
x = 5
puts %Q(X = #{x})

puts ""
puts "Número 9:"
x = 5
puts 'X = #{x}'

puts ""
puts "Número 10:"
puts "Colombia"[-1]

puts ""
puts "Número 11:"
puts "¿En qué década fue creado Ruby? Los 90s"

puts ""
puts "Número 12:"
puts "El intérprete más popular para Ruby es: Cruby"

puts ""
puts "Número 13:"
puts "¿Cuál de las siguientes es una de las principales aplicaciones de Ruby?: Web"

puts ""
puts "Número 14:"
puts "¿Ruby soporta concurrencia?: Si"

puts ""
puts "Número 15:"
puts "¿Cuáles son las 3 principales mejores que se buscan con el proyecto Ruby 3x3?: Desempeño, Modelo de concurrencia, Tipos"

puts ""
puts "Número 16:"
puts Class.class == Class

puts ""
puts "Número 17:"
valores = {"Alemania" => "Berlin", "Francia" => "Paris"}
puts valores.keys.sort[-1][0]

puts ""
puts "Número 18:"
puts [].methods.class == [].class

puts ""
puts "Número 19:"
puts "En Ruby, ¿cómo se declara un método de clase?: Class [name]"

puts ""
puts "Número 20 (Mal):"
puts "¿Cómo podemos averiguar los métodos disponibles en un objeto?: ???"

puts ""
puts "Número 21:"
puts "¿Cómo se compila un programa de Ruby en CRuby?: Ruby es un lenguaje interpretado, por tanto no se puede compilar."

puts ""
puts "Número 22:"
puts "JRuby es un intérprete de Ruby. ¿Cuál es una de sus principales características?: Java y Ruby"

puts ""
puts "Número 23:"
puts "Dado el código:
    module
        Reports
            class PdfReportdef
                self.create
            end
        end
    end

    ¿Cuál es la forma correcta de llamar al método “create”?: Reports::PdfReportdef.create
"

puts ""
puts "Número 24:"
puts [1, "dos", :tres, 4.5].select { |x| x.is_a? Numeric }.count

puts ""
puts "Número 25:"
puts [1, "dos", :tres, 4.5].map(&:to_s).select { |x| x.is_a? String }.count

puts ""
puts "Número 26:"
nombre = "pepe perez"
nombre.upcase!.gsub!("PEPE", "Pepito".swapcase)
puts "Hola #{nombre}"

puts ""
puts "Número 27:"
puts "¿Qué comando se puede utilizar para instalar las gemas especificadas en el gemfile?: bundle install, bundle i"

puts ""
puts "Número 28:"
puts "¿Es recomendado incluir el archivo Gemfile.lock en el repositorio del proyecto?: si"

puts ""
puts "Número 29:"
puts "¿Cómo se inicializa un thread en Ruby?: Thread.new"

puts ""
puts "Número 30:"
puts"¿Cuántos dígitos tiene 2^2000?"
valor = 2**2000
puts valor
puts valor.digits.count