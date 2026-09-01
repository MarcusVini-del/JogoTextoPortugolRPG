programa
{
	inclua biblioteca Util
	inclua biblioteca Texto

	const inteiro velocidadeRapida = 100
	const inteiro velocidadeMedia = 200
	const inteiro velocidadeLenta = 400

	
		 inteiro vidaMesprit = 100
		 inteiro vidaAzelf = 110
		 
		 inteiro escolherSim
		 
		 cadeia nome
	funcao inicio()
	{
		EscreverLento("????: acorde.\n", velocidadeLenta)
		EscreverLento("Narrador: Você acorda\n", velocidadeRapida)
		EscreverLento("????: Vá ao laboratório do Professor Pinheiro, chegou o seu dia.\n",velocidadeMedia)

		EscreverLento("Narrador: Ir ao laboratório?\n", velocidadeRapida)
		
		escreva("         ====================-             -====================           \n")
		escreva("     =#+=====================-:*%*      -%+===+============+==+%*=@+       \n")
		escreva("     -%+================:.===-:*%-      %*=====   =+=====   -===:=@+       .\n")
		escreva("     :%+==============-   ===-:*@-      %*=====    -==+:    -+==:=@=     \n")
		escreva("     :%+==- =+=====++.    ===-:*@-      %*=======          :=====:=@=     \n")
		escreva("     :%+===   =====:    -====-:*@-      %*=======+:      =======:=@=     \n")
		escreva("     :%+===::   -:   .:======-:*@-      %*=======-:      --=====:=@=     \n")
		escreva("     :%+=====-:    --========-:*@-      %*=====:.  ----.   .-===:=@=     \n")
		escreva("     :%+========:=+===========:*@-      %*=====   =======   -===:=@=     \n")
		escreva("     :%-:===================:::*@-      %+:=====+=========++==-::=@=     \n")
		escreva("     :%*+-:::::::::::::::::::=*#%-      %#+-:::::::::::::::::::-**@=     \n")
		escreva("     :%*+*+++++++++++++++++++++#%-      %#+++++++++++++++++++++++*@=     \n")
		escreva("     :*+**+++++++++++++++++++*+**:      ****+++++++++++++++++++++**=     \n")
		escreva("       :=**#**#*#####*####*##+=-        .=*###**######*#*#**#**==         \n")
		                                                                               
		
		leia(escolherSim)
		
		escolha(escolherSim)
		{

			caso 0: escreva("Narrador: Indo ao laboratório")
			pare
			caso 1: escreva("????: Você não tem escolha, vá!")
			pare
			caso contrario:escreva(" ")
			pare
		}
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
 * @POSICAO-CURSOR = 1804; 
 * @DOBRAMENTO-CODIGO = [59, 53, 73, 69, 83, 79];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */