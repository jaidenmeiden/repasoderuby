# Condicionales
is_autenticated = false;

if is_autenticated
    puts "Pantalla de admin"
else
    puts "Pantalla de login"
end

#Condicionales 2

# role = :admin
# role = :superadmin
role = :user

if role == :admin
    puts "Pantalla de admin"
elsif role == :superadmin    
    puts "Pantalla de super admin"
else
    puts "Pantalla de login"
end