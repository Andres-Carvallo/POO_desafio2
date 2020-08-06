class CuentaBancaria
    attr_accessor :saldo
    def initialize(nombre_banco, numero_de_cuenta, saldo=0)
        @nombre_banco = nombre_banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end
    def transferir(monto,cuenta_externa)
        @saldo = @saldo - monto
        cuenta_externa.saldo = cuenta_externa.saldo + monto
    end
end

class Usuario
    attr_accessor :nombre_usuario

    def initialize(nombre_usuario, cuentas)
        @nombre_usuario = nombre_usuario
        @cuentas = cuentas
    end
    
    def saldo_total
       saldo_t = 0
       @cuentas.each { |cuenta| saldo_t += cuenta.saldo }
       saldo_t
    end
     
end

c1 = CuentaBancaria.new('BCI', 12345678, 5000)
c2 = CuentaBancaria.new('Santander', 45678912, 5000)
c1.transferir(5000,c2)
puts c1.inspect
puts c2.inspect
u1 = Usuario.new('Andrés', [c1,c2])
puts u1.saldo_total


