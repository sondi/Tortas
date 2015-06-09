class Oven
	def hornear(torta)
		timer = rand(12)
		puts "el sabor es: #{torta.tipo}"
		puts "el timer es: #{timer}" 
		case torta.tipo
		when "jamon"
			until timer > 5
				timer = torta.tiempo_horneado(timer)
			end
			case timer
				when 0..5
					puts "se horneo por: #{timer} minutos"
					puts "crudo"
				when 6
					puts "se horneo por: #{timer} minutos"
					puts "casi listo"
				when 7
					puts "se horneo por: #{timer} minutos"
					puts "listo"
				else
					puts "se horneo por: #{timer} minutos"
					puts "quemado"
			end
		when "chorizo"
			until timer > 6
				timer = torta.tiempo_horneado(timer)
			end
			case timer
				when 0..6
					puts "se horneo por: #{timer} minutos"
					puts "crudo"
				when 7
					puts "se horneo por: #{timer} minutos"
					puts "casi listo"
				when 8
					puts "se horneo por: #{timer} minutos"
					puts "listo"
				else
					puts "se horneo por: #{timer} minutos"
					puts "quemado"
			end
		when "iberico"
			until timer > 8
				timer = torta.tiempo_horneado(timer)
			end
			case timer
			when 0..8
					puts "se horneo por: #{timer} minutos"
					puts "crudo"
			when 9
					puts "se horneo por: #{timer} minutos"
					puts "casi listo"
			when 10
					puts "se horneo por: #{timer} minutos"
					puts "listo"
			else
					puts "se horneo por: #{timer} minutos"
					puts "quemado"
			end
		else
			until timer > 3
				timer = torta.tiempo_horneado(timer)
			end
			case timer
				when 0..3
					torta.tiempo_horneado(timer)
					puts "se horneo por: #{timer} minutos"
					puts "crudo"
				when 4
					puts "se horneo por: #{timer} minutos"
					puts "casi listo"
				when 5
					puts "se horneo por: #{timer} minutos"
					puts "listo"
				else
					puts "se horneo por: #{timer} minutos"
					puts "quemado"
			end
		end
		puts 
	end

	def hornear_varios_tipos(lote)
		lote.each {|x| hornear(x)}
	end
end

class Torta
	attr_reader :tipo, :lote
	attr_accessor :tiempo

	def  initialize(tiempo, tipo)
		@tiempo = tiempo
		@tipo = tipo
		@lote = []
	end

	def crear_tortas(number)
		case number
			when 1
				jamon = Torta.new(7, "jamon")
				@lote << jamon << jamon << jamon << jamon << jamon
			when 2
				chorizo = Torta.new(8, "chorizo")
				@lote << chorizo << chorizo << chorizo << chorizo << chorizo
			when 3
				iberico = Torta.new(10, "iberico")
				@lote << iberico << iberico << iberico << iberico << iberico
			else
				queso = Torta.new(5, "queso")
				@lote << queso << queso << queso << queso << queso
		end
		@lote
	end

	def tiempo_horneado(variable)
		if variable < @tiempo
			variable += 2
		end
	end
end

torta_1 = Torta.new(7, "jamon")
torta_2 = Torta.new(8, "chorizo")
torta_3 = Torta.new(10, "iberico")
torta_4 = Torta.new(5, "queso")
arreglo_1 = torta_1.crear_tortas(1)
arreglo_2 = torta_2.crear_tortas(2)
arreglo_3 = torta_3.crear_tortas(3)
arreglo_4 = torta_4.crear_tortas(4)

lote = []
lote << torta_1 << torta_2 << torta_3 << torta_4
horno = Oven.new

# puts "para la de jamon"
# puts horno.hornear_varios_tipos(arreglo_1)
# puts "para la de chorizo"
# puts horno.hornear_varios_tipos(arreglo_2)
# puts "para la de iberico"
# puts horno.hornear_varios_tipos(arreglo_3)
# puts "para la de queso"
# puts horno.hornear_varios_tipos(arreglo_4)

horno.hornear_varios_tipos(lote)

#Testing branches













