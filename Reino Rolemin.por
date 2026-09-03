programa
{
	inclua biblioteca Util
	inclua biblioteca Texto

	
	const inteiro velocidadeRapida = 0
	const inteiro velocidadeMedia = 0
	const inteiro velocidadeLenta = 0
	const inteiro velocidadeSuperLenta = 0

	
		 inteiro vidaMesprit = 100
		 inteiro vidaAzelf = 110
		 
		 inteiro escolher
		 
		 cadeia nome
	funcao inicio()
	{
		EscreverLento("????: Acorde.\n", velocidadeMedia)
		EscreverLento("Narrador: De repente, você acorda\n", velocidadeRapida)
		EscreverLento("????: Vá ao laboratório do Professor Pinheiro, chegou o seu dia.\n\n",velocidadeMedia)

		EscreverLento("Narrador: Ir ao laboratório?\n\n", velocidadeRapida)
		escreva("          IR AO LABORATÓRIO                 NÃO IR AO LABORATORIO          \n")
		escreva("         (clique na tecla 0)                (clique na tecla 1)         \n")
		escreva("         ====================-             -=====================-         \n")
		escreva("     =#+=====================-:*%*      -%====+============+==+%*=@-       \n")
		escreva("     -%+================:.===-:*%-      %*=====   =+=====   -===:=@+       .\n")
		escreva("     :%+==============-   ===-:*@-      %*=====    -==+:    -+==:=@=     \n")
		escreva("     :%+==- =+=====++.    ===-:*@-      %*=======          :=====:=@    \n")
		escreva("     :%+===   =====:    -====-:*@-      %*=========      ======:=@     \n")
		escreva("     :%+===::   -:   .:======-:*@-      %*=======-:      --=====:=@=     \n")
		escreva("     :%+=====-:    --========-:*@-      %*=====:.  ----.   .-===:=@=     \n")
		escreva("     :%+========:=+===========:*@-      %*=====   =======   -===:=@=     \n")
		escreva("     :%-:===================:::*@-      %+:=====+=========++==-::=@=     \n")
		escreva("     :%*+-:::::::::::::::::::=*#%-      %#+-:::::::::::::::::::-**@=     \n")
		escreva("     :%*+*+++++++++++++++++++++#%-      %#+++++++++++++++++++++++*@=     \n")
		escreva("     :*+**+++++++++++++++++++*+**:      ****+++++++++++++++++++++**=     \n")
		escreva("      -:=**#**#*#####*####*##+=-         .=*###**######*#*#**#**==       \n")
		                                                                               
		
		leia(escolher)
		
		escolha(escolher)
		{

			caso 0: EscreverLento("Narrador: Indo ao laboratório", velocidadeMedia)
				   EscreverLento("......", velocidadeSuperLenta)
				   
				   limpa()
			pare
			caso 1: EscreverLento("????: Você não tem escolha, vá!", velocidadeLenta)
			        limpa()
			pare
		}

	EscreverLento("Narrador: Ao chegar ao laboratório, você se depara com um grisalho bigodudo\n\n", velocidadeRapida)
	
			escreva("                                                        %%%      @                              \n")
			escreva("                                                      @@@*****#%%#%                             \n")
			escreva("                                               %@%%%%%#%%%@**********#%                           \n")
			escreva("                                              %***********************#@                        \n")
			escreva("                                             %@%*******##%%%%%%%#********%                      \n")
			escreva("                                               #**@*****************##*****@                    \n")
			escreva("                                               #%%********************@#****%                   \n")
			escreva("                                              #%%*******************#%******#                   \n")
			escreva("                                                #***********#%****%*@#*******%                  \n")
			escreva("                                               %*#******#%*%%%##*#**%***##*#%%                  \n")
			escreva("                                               @#@%##***###@*@**#***%**#*%#*%%                  \n")
			escreva("                                               %*%#@#*****###%%*****%**#@@###%%                 \n")
			escreva("                                               %**@@****************#**#####@%%@                \n")
			escreva("                                               %********************#**###%%%%%%%%              \n")
			escreva("                                             @#%***@#%###********%#***####@%%%% @%@             \n")
			escreva("                                              %#%%#*************%%***###%%%%%%%                 \n")
			escreva("                                              @%%****#%#********%*######%%%%@@%                 \n")
			escreva("                                              @#%***%****#%******%#####@%%%%% #                 \n")
			escreva("                                              %%@%%**********%@@#####%%%%%                      \n")
			escreva("                                              @ @%%@********###%#%#%@%@%                        \n")
			escreva("                                                 %%%@########@@@%@@%@%%@                        \n")
			escreva("                                                  @@@@@@%%%%%%@@%%%%%%%@@@@@                    \n")
			escreva("                                              @@@@@@@@%@@@%%%%%%%%%%%%%@@@@@@@                  \n")
			escreva("                                          @%%%%@@@@@%@@@@%%%%%%%%%%%%%@@@@@@@@@                 \n")
			escreva("                                      @@%%%%%%%%@@@@@@@@@%%%%%%%%%%%%@@@@@@%%%%@@#              \n")
			escreva("                                   @%%%%%%%%%%%%@@@@@@@@@@%%%%%%%%%@@@@%%%%%%%%%@%%@@@          \n")
			escreva("                                     @%%%%%%%%%%@@@@@@@@@%@%%%%%%%@@@@%%%%%%%%%%@%%%%%%%@@      \n")
			escreva("                                       @%%%%%%%%@@@%@@@@%%%%@%%@@@%%%@%%%%%%%%%%%@%%%%%%%%%@    \n")
			escreva("                                    %@%%%@%%%%%@@@%@@@@@%%%%%%@@%%%%%%%%%%%%%%%%%@%%@%%%%%%%%@  \n")
			escreva("                                   %%%#%%%@%%%@@%%@@@@@@%%###@%%%%%%@%%%%%%%%%%%%%@%%%%%%%%%%%@ \n")
			escreva("                                  %%%%%%%%@%%@%@#%%%%%%%****%%%%%%%%@%%@@@@@@@%@@@%%%%%%%%%%%%@ \n")
			escreva("                                 @%%%%%%%%%@@%%%*%%%%%%%**%%%%%%%%%%%%@@@@@@%%%%@%%%%%%%%%%%%%@ \n")
			escreva("                                %%%%%%%%%%@@%%@*@%%%%%%@*@%%%%%%%%%%%@@@%%%%%%%%@%%%%%%%%%%%%%@ \n\n")

	EscreverLento("Professor Pinheiro: Olá futuro treinador.\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Seja bem vindo(a) ao Reino Rolemin, o incrível mundo dos rolemins, aqui você vai explorar a diversidade das florestas, espécies, cidades, conhecer e ser amigo dos incríveis rolemins.\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Mas primeiramente, qual o seu nome?\n", velocidadeRapida) 	
	leia(nome)	

	EscreverLento("Professor Pinheiro: Então seu nome é "+ nome +", há milênios procuramos um treinador capaz de controlar um dos rolemins reis das cidades ancestrais guarmenra e vinéscoa, escolha um dos dois\n", velocidadeRapida)
	EsccrverLento("Professor pinheiro: escolha com sabedoria, será o Mesprit ou o Azelf?", velocidadeRapida)
	}
			funcao EscreverLento(cadeia texto, inteiro velocidade)
	{
		inteiro NumCaracteres = Texto.numero_caracteres(texto)
		caracter letra

		
		para(inteiro i=0; i < NumCaracteres; i++)
		{

			letra = Texto.obter_caracter(texto, i)

			escreva(letra)
			
			Util.aguarde(velocidade)
		}	
	}
			funcao PerderVidaMesprit(inteiro quantia)
	{
		vidaMesprit = vidaMesprit - (quantia + 20)
		
		se(vidaMesprit <= 0)
		{
			escreva("Mesprit morreu\n")
			vidaMesprit = 0
		}
	}
			funcao PerderVidaAzelf(inteiro quantia)
	{
		vidaAzelf = vidaAzelf - quantia
		
		se(vidaAzelf <= 0)
		{
			escreva("Azelf morreu\n")
			vidaAzelf = 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7073; 
 * @DOBRAMENTO-CODIGO = [102, 118, 132, 128];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */