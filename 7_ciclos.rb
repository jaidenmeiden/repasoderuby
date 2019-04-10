# Ciclos

puts ""
puts "Forma Ciclo while do"
x = 1
while x < 5 do
  puts "hola #{x}"
  x += 1
end

puts ""
puts "Forma Ciclo loop do"
x = 1
loop do
  puts "hola #{x}"
  x += 1
  break if x >= 5
end

puts ""
puts "Forma Ciclo for do"
for i in 1..4 do
  puts "hola #{i}"
end

puts ""
puts "Forma Ciclo each with Array"
[1,2,3,4].each { |x| puts "hola #{x}" }

puts ""
puts "Forma Ciclo times (Times es una propiedad que tiene los enteros)"
4.times { |x| puts "hola #{x}" }
