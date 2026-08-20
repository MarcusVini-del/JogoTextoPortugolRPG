programa
{
	inclua biblioteca Util --> u
	
	
		cadeia classes[10] = {"Paladino", "Mago", "Feiticeiro", "Espadachim", "Arqueiro", "Duida", "Monge", "Necromante", "Bardo", "Berserker"} 
		cadeia cidades[10] = {"Gondor", "Valhalla", "Rivendell", "Neverwinter", "Camelot", "Asgard", "Minas Tirith", "Avalon", "Arabor", "Stormwind"}
		cadeia adjetivos[10] = {"Vigoroso", "Valente", "Implacavel", "Arcano", "Honrado", "Glorioso", "Destemido", "Mistico", "Poderoso", "Indomavel"}
		cadeia nome

		inteiro ClasseSorteada
		inteiro AdjetivoSorteado
		inteiro CidadeSorteada
		
	funcao inicio()
	{	
		escreva("Qual seu nome?\n")
		leia(nome)

		ClasseSorteada = u.sorteia(0, 10)	
		AdjetivoSorteado = u.sorteia(0, 10)
		CidadeSorteada = u.sorteia(0, 10)	

		escreva("Bem vindo(a) ao mundo de ", cidades[CidadeSorteada], " , ", nome, "!\n")

		escreva("Você é o ", classes[ClasseSorteada], " ", adjetivos[AdjetivoSorteado], " de ", cidades[CidadeSorteada])
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 635; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */