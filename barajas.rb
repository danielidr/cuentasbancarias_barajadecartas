require_relative 'carta'

class Baraja

    attr_accessor :cartas

    def initialize()

        @cartas = []
        pintas = ['C', 'D', 'E', 'T']
        carta = ''

        pintas.each do |pinta|
            numero = 0
            until numero==13
                numero = numero.succ
                carta = Carta.new(numero, pinta)
                @cartas.push(carta)
            end
        end
    end

    def barajar()
        self.cartas = self.cartas.shuffle
    end

    def sacar()
        self.cartas.pop #considerando que la primera carta de la baraja es la ultima del arreglo
    end

    def repartir_mano()
        self.cartas.pop(5)
    end
end

