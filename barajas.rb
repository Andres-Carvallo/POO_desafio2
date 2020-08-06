require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize(cartas=0)
        numbers_array = []
        pinta_array = []
        @cartas = []
        150.times do
            pinta1 = Carta.pinta
            numero1 = Carta.numero
            numbers_array << numero1
            pinta_array << pinta1 
            @cartas = numbers_array.uniq.product(pinta_array.uniq) 
        end
    end
    def barajar
        @cartas = @cartas.shuffle
    end
    def sacar
        @cartas.pop
    end
    def repartir
        @cartas.sample(5)
    end
    
end

a = Baraja.new
print a.inspect
puts "\n"
puts "\n"
print a.barajar
puts "\n"
puts "\n"
print a.sacar
puts "\n"
puts "\n"
print a.repartir

