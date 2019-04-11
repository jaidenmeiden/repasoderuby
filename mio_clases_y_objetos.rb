#Forma 1
class Persona  
    def initialize(name) #Constructor
      @name = name #Variable de instancia se inicializa con el parametro en el constructor
    end
  
    def name #Getter
      @name
    end
  
    def name=(name) #Setter
       @name = name
       self
    end
end

#Forma 2
class Persona
    attr_accessor(:name)  # Genera getter y setter
  
    def initialize(name)
      @name = name
    end
  end

  #Forma 3 en una linea:
  class Persona < Struct.new(:name) #Struct declara el constructor, getters y setters
  end

  #Forma 4
  Persona = Struct.new(:name)