class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        
        pinta.upcase!
        pintas = ['C', 'D', 'E', 'T']

        if (numero >= 1 && numero <= 13) && pintas.include?(pinta)
                @numero = numero
                @pinta = pinta
        else
            raise ArgumentError.new('No es un argumento válido')
        end
    end
end

# pintas = ['C', 'D', 'E', 'T']

# carta1 = Carta.new(rand(1..13), pintas.sample)
# carta2 = Carta.new(rand(1..13), pintas.sample)
# carta3 = Carta.new(rand(1..13), pintas.sample)
# carta4 = Carta.new(rand(1..13), pintas.sample)
# carta5 = Carta.new(rand(1..13), pintas.sample)

# print [carta1, carta2, carta3, carta4, carta5]