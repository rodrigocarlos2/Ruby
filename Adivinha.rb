

class Numero

	def initialize()
	
	end
	
	def geraAleatorio
	
		numero = rand 100
	
	end
	
	def avaliaPalpite(numero, palpite)
	
		if numero>4
			@margem = (numero/2) - (numero/2)/2
		elsif
			@margem = 3
		end
		
		@limiteInferior = numero-@margem
		@limiteSuperior = numero+@margem
		
		if palpite == numero
			puts "Ganho o jogo!"
			return true
		elsif palpite>=@limiteInferior && palpite<=@limiteSuperior
			puts "Quente!"
			return false
		else
			puts "Frio!"
			return false
		end
	
	end

end

class Jogo

	op = 1;
	
	n = Numero.new
	
	@numeroTentativas = 0
	
	while op!=-1
	
		if(op==1)
	
			@numero = n.geraAleatorio
			
		end
		
		print "Digite seu palpite: "
			
		@palpite = gets
		
		@palpite = Integer(@palpite)
			
		@Fim = n.avaliaPalpite(@numero, @palpite)
		
		op = op+1
		
		@numeroTentativas = @numeroTentativas+1
		
		if(@Fim==true)
		
			puts "Numero de tentativas: #{@numeroTentativas}"
			printf("Digite -1 para terminar ou qualquer outro numero para continuar")
			@tecla = gets
			@tecla = Integer(@tecla)
			
			
			if(@tecla!=-1)
				op = 1
			else
				op = -1;
				
			end
			
			system("cls")
		
		end
	
	end

end
