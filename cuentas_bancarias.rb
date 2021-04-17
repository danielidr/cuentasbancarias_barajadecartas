class CuentaBancaria
    attr_accessor :saldo
    attr_reader :banco, :numero_de_cuenta

    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_bancaria)
        self.saldo -= monto 
        cuenta_bancaria.saldo += monto
    end
end

cuenta1 = CuentaBancaria.new('Bancoestado', '12312324', 5000)
cuenta2 = CuentaBancaria.new('Scotiabank', '84738489', 5000)

cuenta1.transferir(5000, cuenta2)
puts cuenta1.saldo
puts cuenta2.saldo

class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total()
        saldo_final = 0
        cuentas.each do |cuenta|
            saldo_final += cuenta.saldo
        end
        saldo_final
    end
end

usuario1 = Usuario.new('Juan', [cuenta1, cuenta2])
puts usuario1.saldo_total