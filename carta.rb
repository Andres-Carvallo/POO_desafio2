
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










   






