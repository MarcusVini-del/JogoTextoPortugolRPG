programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto

	const inteiro velocidadeImagens = 5
	const inteiro velocidadeRapida = 0
	const inteiro velocidadeMedia = 0
	const inteiro velocidadeLenta = 0
	const inteiro velocidadeSuperLenta = 0

		// variaveis e vetores de status dos dois rolemins ancestrais
	
		 inteiro vidaMesprit = 100
		 inteiro vidaAzelf = 120
		 
		 inteiro defesaA
		 inteiro ataqueA 
		 inteiro velA
		 
		 inteiro defesaM
		 inteiro ataqueM 
		 inteiro velM
		 
		 cadeia StatusAzelf[3] = {"defesaA", "ataqueA", "velA"}
		 cadeia StatusMesprit[3] = {"defesaM", "ataqueM", "velM"}

		//variaveis que serão lidas ou escolhidas
		 
		 cadeia nome
		 cadeia roleminEscolhido
		 logico roleminEscolhidologico = falso
		 inteiro escolher
		 
	funcao inicio()
	{

		EscreverLento("       /$$$$$$$            /$$                                \n", velocidadeImagens)
		EscreverLento("      | $$__  $$          |__/                                \n", velocidadeImagens)
		EscreverLento("      | $$  \\ $$  /$$$$$$  /$$ /$$$$$$$   /$$$$$$             \n", velocidadeImagens)
		EscreverLento("      | $$$$$$$/ /$$__  $$| $$| $$__  $$ /$$__  $$            \n", velocidadeImagens)
		EscreverLento("      | $$__  $$| $$$$$$$$| $$| $$  \\ $$| $$  \\ $$            \n", velocidadeImagens)
		EscreverLento("      | $$  \\ $$| $$_____/| $$| $$  | $$| $$  | $$            \n", velocidadeImagens)
		EscreverLento("      | $$  | $$|  $$$$$$$| $$| $$  | $$|  $$$$$$/            \n", velocidadeImagens)
		EscreverLento("      |__/  |__/ \\_______/|__/|__/  |__/ \\______/             \n", velocidadeImagens)
		EscreverLento("                                                              \n", velocidadeImagens)
		EscreverLento(" /$$$$$$$            /$$                         /$$          \n", velocidadeImagens)
		EscreverLento("| $$__  $$          | $$                        |__/          \n", velocidadeImagens)
		EscreverLento("| $$  \\ $$  /$$$$$$ | $$  /$$$$$$  /$$$$$$/$$$$  /$$ /$$$$$$$ \n", velocidadeImagens)
		EscreverLento("| $$$$$$$/ /$$__  $$| $$ /$$__  $$| $$_  $$_  $$| $$| $$__  $$\n", velocidadeImagens)
		EscreverLento("| $$__  $$| $$  \\ $$| $$| $$$$$$$$| $$ \\ $$ \\ $$| $$| $$  \\ $$\n", velocidadeImagens)
		EscreverLento("| $$  \\ $$| $$  | $$| $$| $$_____/| $$ | $$ | $$| $$| $$  | $$\n", velocidadeImagens)
		EscreverLento("| $$  | $$|  $$$$$$/| $$|  $$$$$$$| $$ | $$ | $$| $$| $$  | $$\n", velocidadeImagens)
		EscreverLento("|__/  |__/ \\______/ |__/ \\_______/|__/ |__/ |__/|__/|__/  |__/\n\n\n", velocidadeImagens)

		
		EscreverLento("????: Acorde.\n", velocidadeMedia)
		EscreverLento("Narrador: De repente, você acorda\n", velocidadeRapida)
		EscreverLento("????: Vá ao laboratório do Professor Pinheiro, chegou o seu dia.\n\n",velocidadeMedia)

		EscreverLento("Narrador: Ir ao laboratório?\n\n", velocidadeRapida)

		
		escreva("                 IR AO LABORATÓRIO                       NÃO IR AO LABORATORIO          \n")
		escreva("                (clique na tecla 0)                       (clique na tecla 1)         \n")
		escreva("             ▓▓▓█▓███▓███████▓▓▓▓▓▓▓▓▓                ▓█▓█▓██▓▓█▓▓▓▓▓███▓████▓▓▓▓▓              \n")
		escreva("           ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓            ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓█▓▓▓             \n")
		escreva("          ▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓          ▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓           \n")
		escreva("         ▓█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▓         ██▓▒▒▒▒▒░   ░▓▒▒▒▒▒▒▒▒   ▒▓▒▒▒▒▒██        \n")
		escreva("       ▒██▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒██▒        ██▓▒▒▒▒▒░     ▒▒▒▒▒░    ░▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒ ▒▒▒▒▒▒▒▒▒▒▓▒     ▒▒▒▒▒▒▒██▒        ██▓▒▒▒▒▒▒▒▒            ▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ░██▓▒▒▒░   ░▓▒▒▒▒▓▒     ▒▓▒▒▒▒▒▒▒██▒        ██▓▒▒▒▒▒▒▒▒▓▒        ▒▒▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒     ▒▒▒░     ▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒▒▒▒▒▒        ▒▒▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒▒▒    ▒▒    ▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒▒▒▒▒░        ▒▒▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒▒▒▒▒      ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒▒▒▒   ▒▒▒▒▒░   ▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒▒▒▒▒     ░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒░     ▒▒▒▒▒░░    ▒▒▒▒▒▒▒██▒       \n")
		escreva("       ▒██▓▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒▒░▒░░▒▒▒▒▒▒▒▒▒░▒░▒▒▒▒▒▒▒██▓       \n")
		escreva("       ░██▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█▒        ██▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▒       \n")
		escreva("       ░██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██▒        ██▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓██▒       \n")
		escreva("       ▒██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▓       \n")
		escreva("       ░██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▒        ██▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓██▓       \n")
		escreva("        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒        ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▒       \n")
		escreva("          ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓           ▒▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓            \n")
		escreva("            ██████████████████████████░                ██████████████████████████▒              \n")
		                                                                               
		
		leia(escolher)
		
		escolha(escolher)
		{

			caso 0: EscreverLento("Narrador: Indo ao laboratório\n", velocidadeMedia)
				   para(inteiro i = 0; i <= 3; i++)
				   {
				   EscreverLento(".", velocidadeSuperLenta)
				   }
				   
				   limpa()
			pare
			caso 1: EscreverLento("????: Você não tem escolha, vá!", velocidadeLenta)
			        limpa()
			pare
			caso contrario: EscreverLento("????: Você não tem escolha, vá!", velocidadeLenta)
			        limpa()
		}

	EscreverLento("Narrador: Ao chegar ao laboratório, você se depara com um senhor grisalho e bigodudo\n\n", velocidadeRapida)
	
		escreva("                                                           ▒▓░      ░                               \n")
		escreva("                                                           ▒█████▓▒▒▒█▒                             \n")
		escreva("                                                ▒░▒▒▒▒▒▓▒▒▒▒▓██████████▒                            \n")
		escreva("                                                 ▒████████████████████████▓                         \n")
		escreva("                                                ░░░██████████▓▓▒▒▓██████████▒                       \n")
		escreva("                                                 ▒███▓▒████████████████▓▓█████▒                     \n")
		escreva("                                                   ▒▓█████████████████████░█████                    \n")
		escreva("                                                 ░▓▓▓██████████████████▓▒███████▓                   \n")
		escreva("                                                   ▓█████████████▒▒██▒██░███████▓                   \n")
		escreva("                                                  ░▒▓███████▓▒██▒░▒▓▓██▓████▓▓▓▒█                   \n")
		escreva("                                                  ░░▒█▓████▒░▓▒█░▒██▓██████░█▒▓█▒▒                  \n")
		escreva("                                                  ▒█▒▓░▓█████▒▓▒▓█▓████▓███▒▒▓▓█▒▒                  \n")
		escreva("                                                  ▓████▓███████████████▓███░▓▓▓▓▒▒▒                 \n")
		escreva("                                                  ▒███▒████████████████▓███▒▓▓▓▓▓▓▓▓▒               \n")
		escreva("                                                 ░░██▓████████████████▒███▓▒▒▓▒▓▓▓▒▓▓░              \n")
		escreva("                                                ░▒▓▓██▒▓▓▓████▓▓▓▒▒▒▒▓░███▓▒▒▓▓▓▓▒▒                 \n")
		escreva("                                                 ░▒▓█████████████▓████▓▓▓▒▒▓▓▓░▒▒                   \n")
		escreva("                                                 ░▓▒████░█▓▒▓███████▓▓▓▓▓▓▓▒▓▓▒▒ ▒▒                 \n")
		escreva("                                                 ░▓▓▓█▒██▒▒▒██▓▒█▒░▒░▓▓▓▓▓░░▒▒░▒                    \n")
		escreva("                                                 ▒▒▒▒▒███████████▓░▓▓▓▓▓░▒▒▓▒                       \n")
		escreva("                                                    ░▓▒▓██████▓▓▓▓▒▓░▓▒▒▒░░                         \n")
		escreva("                                                     ░░▒▒▒▓▓▓▓▒░▒▒▒▒▒░░▒▒▒▒░░                       \n")
		escreva("                                                   ▒▒░░░░░░▒▒▒▒▒░▒▒▒▒▒▒▒▒▒░▒░▒▒░░                   \n")
		escreva("                                               ▓░▒▒░░░░░▒▒░▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░░▒▒▒░                  \n")
		escreva("                                           ▒░▒▒▒▒▒▒░░░▒▒░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒░▒░▒▒░                 \n")
		escreva("                                        ░▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒▒▒▒░░░              \n")
		escreva("                                      ░▒▓▒▒▒▒▒▒▒▒▒▒░░░░░░░░░░░▒▒▒▒▒▒▒▒▒░░░▒▒▒▒▒▒▒▒▒░░▒▒▒░░▒         \n")
		escreva("                                        ▒▒▒▒▒▒▒▒▒▒▒░░▒░░░░░░▒▒░▒▒▒▒▓▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒▒▒▒▒░░      \n")
		escreva("                                          ░▒▒▒▒▒▒▒▒░░░▒░░░░░▒▒▒░▒▒░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░    \n")
		escreva("                                       ░▒▓▓▒░▒▒▒▒▒░░▒▒░░░░░▒▒▒▒▒▒░░▒▒▒▒▓░▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒▒▒▒▒▒▒▒▓░  \n")
		escreva("                                     ░▓▒▓▓▓▓▒░▒▒▒░░▒▒░░░░░░▒▓▓▓▓░▓▓▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒▒▒▒▒▒▒▒▒░ \n")
		escreva("                                    ▒▓▒▓▓▓▒▒▒░▒▒░▒░▓▓▒▒▒▒▒▒████░▓▒▓▓▓▓▓▒▒▒░░▒░░░▒░▒▒░░░▒▒▒▒▒▒▒▒▒▒▒░ \n")
		escreva("                                   ▒▒▓▓▒▒▒▒▒▒▒░░▒▒▒█▒▒▒▒▒▒▒███▒▓▓▓▓▓▓▓▓░▒░▒▒▒▒▒▒▒▒▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒░ \n")
		escreva("                                   ░▒▒▒▒▒▒▒▒▒░░▒▒░█░▒▒▒▒▒▒▒█░▓▓▒▓▓▓▓▓▓▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░ \n")

		
	EscreverLento("Professor Pinheiro: Olá futuro treinador.\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Seja bem vindo(a) ao Reino Rolemin, o incrível mundo dos rolemins, aqui você vai explorar a diversidade das florestas, espécies, cidades, conhecer e ser amigo dos incríveis rolemins.\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Eles são criaturas vivas dotada de poderes especiais e coexiste com nós humanos\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Mas primeiramente, qual o seu nome?\n\n", velocidadeRapida)

	 escreva("|▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓|\n")
	 escreva("|    INSIRA O SEU NOME AQUI    |\n")
	 escreva("|▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       ______       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       |    |       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       |    |       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       |    |       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       |    |       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒    ___|    |___    ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒    \\        //     ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒     \\      //      ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒      \\    //       ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒       \\  //        ▒▒▒▒▒|\n")
	 escreva("|▒▒▒▒▒        \\//         ▒▒▒▒▒|\n")
	 escreva("           ")
	leia(nome)	

	EscreverLento("Professor Pinheiro: Então seu nome é "+ nome +", há milênios procuramos um treinador capaz de controlar um dos rolemins reis das cidades ancestrais guarmenra e vinéscoa, escolha um dos dois\n", velocidadeRapida)
	EscreverLento("Professor Pinheiro: Primeiro falarei deles, depois você pode escolher um deles\n", velocidadeRapida)
	EscreverLento("Professor pinheiro: O azelf remete a vida, tranquilidade e determinação, os status dele de vida é 20% acima do Mesprit. \n\n",velocidadeRapida)


		escreva("                                       █▒▒▒▒▒▒▒▓█\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒█\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▓\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▒░▓▓▒▒▒\n")
		escreva("                                       █▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▓░▒▒▒▒▒▒█\n")
		escreva("                                       ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▒▒█▒▒▓█\n")
		escreva("                                      ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▒▒█▒▒▓█▓█\n")
		escreva("                                    █▒▒▒▒▒▒▒▒▒▒▒▒█▓█▒▒▒▒▒▒▒▒▒▒▓▒▓▒▒██▒█▓▓\n")
		escreva("                                   █▒▒▒▒▒▒▒▒▒▒█░░░░░▒▒▓▒▒▒▒▒▒▒▒▒▒▒▓▒░█▒▒▒▓\n")
		escreva("                                  ▒▒▒▒▒▒▒▒▒▒▒▓░░░░░░░▒▓░▒▒▒▒▒▒▒▒▒▒░▒▒▓▒▒▒▒▓\n")
		escreva("                                 ▒▒▒▒▒▒▒▒▒█▒▒░░░░░░░▒░▒░▒▒▒▒▒▒▒▒▒▒░▒▒░█▒▒▒▒▒\n")
		escreva("                                ▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░█░░▓▒▒▒▒▒▒▒▒▒▒▒▓░▒▓▒▒▒▒▒▒▓\n")
		escreva("                               ▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░█▒▒▓▓▒▒▒▒▒▒▒▒▒▓▓██ ██▓▒▒▓\n")
		escreva("                               ▒▒▒▓▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░▒▒▒▒▒▒▒▒▒▓▒▓▒\n")
		escreva("                               ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓    █▒▒▒█▒▒▓▒▓▓▒▓█\n")
		escreva("                                 ▓▒▒▒▓▒▒▒▒█          █▒▒▒\n")
		escreva("                                                     ▓▒▒▒▒▒▒▒▓█\n")
		escreva("                                                   █▒▒▓▒▒▒▓█▒▒▒▒▒▒▒▒▓█\n")
		escreva("                             █                   ▒▒▒▒█▒▒▒▒▒▓  █▒▒▒▒▒▒▒▒▒▒█\n")
		escreva("                            █▒▒█       █▒▒█    ░░░░░▓░░░░░░░░    █▒▒▒▒▒▒▒▒░░▓\n")
		escreva("                            █▒▒▒▒    ▒▒▒▒▒█  ▒░░░░░▓█░░░░░░░░░░█     ▓▒▒▒░░░░░░█\n")
		escreva("                           ▓█▒▒▒▒▒ █▒▒▒▒▒▒ █░░░░░░█ █░░░░░░░░░░░░░█      █▓▒▒░░░░█\n")
		escreva("                  ▓▒▒▒█   █▒▒▒▒▒▒▒▓▒▒▒▒▒▒▓█░░░░░░   ▒░░░░░░░░░░░░░░░█       █ █\n")
		escreva("                  ▓▒▒▒▒▒▒█▓▒▒▒▒▒▒▒▒▒██▒▒▒░░░░░░▓    ▒░░░░░░░░░░░░░░░░░     ░░█\n")
		escreva("                   ▒▒▒▒▒▒▒▒▒▓█▒▒▒▒▓▓░▓▒▓░░░░░░▒▓    ▒░░░░░░░░░░░░▓░▓░░░█  ▒▒▒▓\n")
		escreva("                   █▒▒▒▒▒▒▒▒▓░▓▒▒▒▓▓▓▒▓░░░░░▒▒█     ▒░░░░░░░░░░░▓░░▓░░░░ ▒▒▒▒█\n")
		escreva("                    █▒▒▒▒▒▒▒█▓▓▒▒▒▒▒▒▓░░░░▒▓        █░░░░░░░░░░▓░░░▒░░░░░▒▒▒▒\n")
		escreva("                      ▓▒▒▒▒▒▒▓▒▒▒▒▒▒▒░░▓▒▒           ░░░░░░░░░░░░░░█░░░░▒▒▒▒▒\n")
		escreva("                        █▒▒▒▒▒▓▒▒▒▓                  ▒▒▒░░░░░█▓▒▒▒▒▓░▒▒▒▒▒▒▒\n")
		escreva("                            ▓▒▒▒▒                     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n")
		escreva("                             █▒▒▒▓                     ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n")
		escreva("                           █▒▒▓▒▒                       ▓▒▒▒▒▒▒▒▒▒▒▒▓\n")
		escreva("                            █▒▓                         ▒▒▒▒▒▓█▓▒▒▒\n")
		escreva("                            ▒▒▒█                       ▓▒▒▒▒▒ ▒▒▒▒█\n")
		escreva("                            ▒▓▓▒                       ▒▒▒▒▒█ ▒▒▒▒\n")
		escreva("                            ▒██▒                      ▒▒▒▒▒▒ ▒▒▒▒█\n")
		escreva("                           █▒█ ▒▓                    ▒▒▒▒▒▒ █▒▒▒█\n")
		escreva("                           █▒█ █▒█                  ▒▒▒▒▒▒ █▒▒▒▓\n")
		escreva("                           █▒▓  ▒▒                 ▒▒▒▒▒▒  ▒▒▒▒\n")
		escreva("                            ▒▒   ▒▒              █▒▒▒▒▒█ █▒▒▒▓\n")
		escreva("                            ▓▒█   ▒▒█           █▒▒▒▒▒  ▓▒▒▒█\n")
		escreva("                             ▒▒    ▒▒▓        █▒▒▒▒▒█ █▒▒▒▒\n")
		escreva("                             █▒▒    █▒▒█    ▓▒▒▒▒▒█  ▒▒▒▒█\n")
		escreva("                              █▒▒█    ▒▒▒█▒▒▒▒▒▓  ▓▒▒▒▒\n")
		escreva("                                █▒▒▒▒▒▒▒▒▒▒▒█▒▒▒▒▒▒▒█\n\n")


	EscreverLento("Professor pinheiro: Já o Mesprit, remete a guarda, proteção, amor próprio, ele tem 20% a mais de defesa que o azelf.\n\n",velocidadeRapida)

		escreva("                                            █▒░░░░░░░░▒▒▒▒█\n")
		escreva("                                        █▒▒▒▒░░░░░░░░░▒▒▒▒▒▒▒\n")
		escreva("                                     ▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n")
		escreva("                                  ▓▒▒▒▒▒▒▒▒▒▓▒▒▒▒▓░▓▓▒▒▒▒▒▒▒▒▒█▒▒█\n")
		escreva("                               █▒▒▒▒▒▒▒▒▒▓░░░▒▒▒▓░▓▓█▒▒▒▒▒▒▒▒▒▒▒█▒▓█\n")
		escreva("                             ▓▒▒▒▒▒▒▒▒█▒▒░░░░▒▒▒▓▓▒▒▒▒▒▒▒░░█▒▒▒▒▒▒▓▓▓█\n")
		escreva("                           ▒▒▒▒▒▒▒▒▒▓ ▒▒░░▒░░░▒▒▒▒▒█▒▒█░░░░░█▒▒▒▒▒▒▓▓▓▓█\n")
		escreva("                         ░▒▒▒▒▒▒▒▒▒   ▒▓░░▓▓░░▓▒░▓▒▒▒▒░░░░░▒▒█▒▒▒▒▒▒▒▒▓▓▒\n")
		escreva("                       ▓▒▒▒▒▒▒▒▒▒█   ██▓░░░▒▒░▒▒▒▒▒▒█░░░▓░░░░░▓▒▒▒▒▒▒▒█▒▓▒█\n")
		escreva("                     █▒▒▒▒▒▒▒▒▒▓    ▒▒▒░░░▒░░▒▒▒▒▒▒▒▓░█░▒▒▓░░▒▒▒▒▒▒▒▒▒▒█▒▓▒▒\n")
		escreva("                    █▒▒▒▒▒▒▒▒▒█   █▓▒▓▓▒░█▒░▓▒▒▒▒▒▒▒▒░░░░░░░░▒█ ▒▒▒▒▒▒▒▒▓▓▓▓▓█\n")
		escreva("                   █▒▒▒▒▒▒▒▒▒█   █▒▒▓▓▓▓▓█░▒▒▒▒▒▒▒▒▒▒▒░░▓░░█▒█  █▒▒▒▒▒▒▒▒▓▓▓▒▒█\n")
		escreva("                  █▒░░▒▒▒▒▒▒    █▒▒▓▓▓▒▒   ▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒█     ▓▒▒▒▒▒▒▒▒█▓▓▒▒█\n")
		escreva("                  ░▒░░▒▒▒▒▒    █▒▒▒▒▒▒▒█       ▓▒▒▒▒▓█▒▒█         ▒▒▒▒▒▒▒▒▒█▒▓▒▒█\n")
		escreva("                  ▒▒░▒▒▒▒▒     ▓▒▓█▒░░░░░░░▒▒▒▒▒▒▒▒▓▓██           █▒▒▒▒▒▒▒▒▒▓▒▒▒▒█\n")
		escreva("                  █▒▒▒▒▒▓ █▓░░░░░░░░░░░░░░▒▒▓█ ▓▒▒▒▒ ▒▒▒░░░░░▒██   ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒\n")
		escreva("                         ▓░░░░░░░░░░▒▓██      ▒░░░░░█  █▒░░░░░░░░░░░▒▒▒▒▒▒▒▒▒▓▒▒▒▒\n")
		escreva("                           ██     █         █░░░░░░░▓      ▓░░░░░░░░▓▒▒▒▒▒▒▒▒▒▒▒▒█\n")
		escreva("                                          █░░░░░░░░░░           █▓▒░▓▒▒▒▒▒▒▒▒▒█▓\n")
		escreva("                                   ██    ░░░░░░░░░░░░█               ▒▒▒▒▒▒▒▒▒▓\n")
		escreva("                                   ░░  █░░░░░░░░░░░░░░ █             █▒▒▒▒▒▒▒▒▓\n")
		escreva("                                  █░░░█░░░░░░░░░░░░░░▒░░              █▒▒▒▒▒▒█\n")
		escreva("                                  █░░░▓░░░░░░░░░░░░░░░░░█\n")
		escreva("                                  ▓░░░░▒░░░░░░░░░░░░░░░░█\n")
		escreva("                                  █░░░░░░░░░░░░░░░░█░░░░█\n")
		escreva("                                   ░░░░░░░░░░░░░░░░░░░░░█\n")
		escreva("                                    ▒▒▒▒▒░░░░░░░░░░░░░░▒     ▒▒▒\n")
		escreva("                                   ▒▒▒▒░▓▒▒▒▒▒▒▒▒▒▒▒▓▓█     ▒▒▒▒\n")
		escreva("                           ░░█    ░░▒▒▒▒ ▓▒▒▒▒▒▒▒▒▒▒▒█     ░▒▒▒▒\n")
		escreva("                           ▒▒▒▒░ █▒▒▒▒▒▒  ▒▒▒▒█ █▒▒▒▒█    ░▒░░░░\n")
		escreva("                           █▒▒▒▒▒█▒▒▒▒▒▒ ▓▒▒▒▒█  ▒▒▒▒░░░█▓░░░░░░   ███\n")
		escreva("                            ▒▒▒▒▒▒▒▓▓▒▒▒▒▒▓░░░█  ░░░░░▒░░░░░░░▒▒░▒▒▒▒▒▒░\n")
		escreva("                             ▓▒▒▒▒▓▒▓▓▒▒▒▒█░░░▓  ░░░░░▒▒▒▒▓░▓░▒▒▒▒▒▒▒▒█\n")
		escreva("                              █░▒▒▒▓▒░▒▒▒▒▒░░░▓  ░░░░ ▒▒▒▒▓▓▒░▒▒▒▒▒▒█\n")
		escreva("                                 ▒▒▒▒▒▒▒█  ░░░▒  ░░░▒  ▓▒▒▒█▒▒▒▒▒▓\n")
		escreva("                               █▒▒▒▒▒▒█    ░░░░  ▓░░▒    █▒▒▓▓\n")
		escreva("                                 █▒▒▓      ▓░░░  ▓░░▒   ▓▒▒▒▒▒\n")
		escreva("                                █▒▒▒▒▓     █░░░  █░░▒  █▒▒▒▒\n")
		escreva("                                  █▒        ░░░  █░░▒    ▒▒▒█\n")
		escreva("                                  █▒█       ░░░  █░░▒    ▒▓\n")
		escreva("                                   ▒█       ░░░█ █░░▓   █▒\n")
		escreva("                                   ▒▒       ▓░░█  ░░▓   ▓▒\n")
		escreva("                                    ▒█      ▓░░█  ░░▓   ▒█\n")
		escreva("                                    ▒▒      ▓░░█ ▓░░▓  ▒▒\n")
		escreva("                                    █▒▓      ░░█ █░░▓ █▒█\n")
		escreva("                                     ▓▒▓     ░░█ █░░██▒▓\n")
		escreva("                                      ▓▒▒    ░░█ █░░█▒▒\n")
		escreva("                                       █▒▒█ ▓▒▒  █▒▒▒▒\n")
		escreva("                                         █▒▒▒▒▒  █▒▒▒\n\n")

		EscreverLento("Professor pinheiro: Qual você escolherá?\n",velocidadeRapida)
		leia(roleminEscolhido)

		se(roleminEscolhido == "Azelf" ou roleminEscolhido == "azelf")
		{
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha no alto do castelo principal do reino de Vinéscoa, é onde se encontra Mesprit\n", velocidadeRapida)
			StatusSorteadoAzelf()

			roleminEscolhidologico = verdadeiro
		}
		senao se(roleminEscolhido == "Mesprit" ou roleminEscolhido == "mesprit")
		{
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha nas cavernas internas de baixo do reino de Guarmenra, é onde se encontra Azelf\n", velocidadeRapida)
			StatusSorteadoMesprit()

			roleminEscolhidologico = verdadeiro
		}
		senao
		{
			enquanto(roleminEscolhidologico == falso)
			{
				EscreverLento("Professor Pinheiro: Você só tem essas duas opções, diga uma delas\n", velocidadeRapida)
				leia(roleminEscolhido)

				se(roleminEscolhido == "Azelf" ou roleminEscolhido == "azelf")
		{
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha no alto do castelo principal do reino de Vinéscoa, é onde se encontra Mesprit\n", velocidadeRapida)
			StatusSorteadoAzelf()

			roleminEscolhidologico = verdadeiro
		}
		senao se(roleminEscolhido == "Mesprit" ou roleminEscolhido == "mesprit")
		{
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha nas cavernas internas de baixo do reino de Guarmenra, é onde se encontra Azelf\n", velocidadeRapida)
			StatusSorteadoMesprit()

			roleminEscolhidologico = verdadeiro
		}
			}
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
			funcao StatusSorteadoAzelf()
			{
			defesaA = u.sorteia(25, 100)
			ataqueA = u.sorteia(25, 100)
			velA = u.sorteia(25, 100)
			}
			funcao StatusSorteadoMesprit()
			{
			 defesaM = u.sorteia(25, 100)
			 ataqueM = u.sorteia(25, 100)
			 velM = u.sorteia(25, 100)
			}
}			

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5710; 
 * @DOBRAMENTO-CODIGO = [320, 336, 346, 356, 362];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */