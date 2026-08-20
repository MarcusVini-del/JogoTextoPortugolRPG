programa
{
	inteiro vida = 100
	
	funcao inicio()
	{
		escreva("bati o joelho\n")
		PerderVida(10)
		escreva("vida: ", vida, "\n")
		
		escreva("sofri um acidente de moto\n")
		PerderVida(85)
		escreva("vida: ", vida, "\n")

		escreva("cai de patins\n")
		PerderVida(5)
		escreva("vida: ", vida)

		
	}
	funcao PerderVida(inteiro quantia)
	{
		vida = vida - quantia
		se(vida <= 0)
		{
			escreva("voce morreu\n")
			vida = 0
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */