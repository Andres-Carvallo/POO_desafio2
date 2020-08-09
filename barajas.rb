require_relative 'carta'

class Baraja
    attr_accessor :cartas
    def initialize(cartas=0)
        numbers_array = []
        pinta_array = []
        @cartas = []

        200.times do
            pinta1 = Carta.pinta
            numero1 = Carta.numero
            numbers_array << numero1
            pinta_array << pinta1 
            @cartas = numbers_array.uniq.product(pinta_array.uniq) 
        end 
        
        if @cartas.count != 52
            puts 'Error al generar baraja'
            @cartas = []
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

baraja1 = Baraja.new
print baraja1.cartas
puts "\n"
puts "\n"
print baraja1.barajar
puts "\n"
puts "\n"
print baraja1.sacar
puts "\n"
puts "\n"
print baraja1.repartir

