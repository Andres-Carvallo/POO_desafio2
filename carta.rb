
class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
    def self.numero
        [1,2,3,4,5,6,7,8,9,10,11,12,13].sample
    end
    def self.pinta
        ['C','D','P','T'].sample
    end
end

# cards_array = []
# 5.times do
#     pinta1 = Carta.pinta
#     numero1 = Carta.numero
#     cards_array.push Carta.new(numero1,pinta1)   
# end

# print cards_array.inspect






   






