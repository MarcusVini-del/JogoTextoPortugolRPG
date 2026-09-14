programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto

	const inteiro velocidadeImagens = 5
	const inteiro velocidadeRapida = 65
	const inteiro velocidadeMedia = 85
	const inteiro velocidadeLenta = 100
	const inteiro velocidadeSuperLenta = 120

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
			caso contrario: EscreverLento("????: Você não tem escolha, VÁ LOGO!", velocidadeLenta)
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
	EscreverLento("Professor Pinheiro: Eles são criaturas vivas dotadas de poderes especiais e coexiste com nós humanos\n", velocidadeRapida)
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
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha no Reino de Vinéscoa, é onde se encontra Mesprit\n", velocidadeRapida)
			StatusSorteadoAzelf()

			roleminEscolhidologico = verdadeiro
		}
		senao se(roleminEscolhido == "Mesprit" ou roleminEscolhido == "mesprit")
		{
			EscreverLento("Professor Pinheiro: Boa escolha, agora vá para a batalha no Reino de Guamenra, onde se encontra Azelf\n", velocidadeRapida)
			StatusSorteadoMesprit()

			roleminEscolhidologico = verdadeiro
		}
			}
		}

		EscreverLento("Profesor Pinheiro: Você pode ir com o nosso avião, ou com o nosso buggy, qual você prefere?\n", velocidadeRapida)
		leia(escolher)
		
		 escreva("                     Avião                                     Buggy        \n")
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

		
		 escolha(escolher){

			caso 0:
			EscreverLento("Narrador: o professor leva você no aeroporto, onde está o avião\n, Chegando perto você vê uma moça de cabelos vermelhos, assim que a vê, ela dá um grito animado dizando:\n", velocidadeRapida)
			EscreverLento("BEM VINDO(A), BELO(A) VIAJANTE!!!, a viagem não irá demorar, você logo chegará ao seu destino.\n", velocidadeRapida)

			//a partir daqui será a narrração da viagem
			EscreverLento("Narrador: Assim que você se acomoda no avião, durante o caminho ela começa a conversar com você, porém, você se distrai com as paisagens linda de fora do avião.\n", velocidadeRapida)
			EscreverLento("Narrador: Você avista o quanto o Reino é grande e colossal de verde por causa da flora do lugar\n", velocidadeRapida)
			EscreverLento("Narrador: Você volta a realidade quando você ouve um impacto forte vindo da janela frontal do avião\n", velocidadeRapida)
			EscreverLento("Narrador: Você percebe que a situação está complicada, quando a moça de cabelos vermelho começa a se desesperar e um bando de corvos começa a se aproximar do avião\n", velocidadeRapida)
			EscreverLento("Narrador: No meio dessa situação, tu pergunta a moça o que está acontecendo e ela responde você com um tom desesperado: NÓS VAMOS TODOS MORRER!!!\n", velocidadeRapida)
			EscreverLento("Narrador: Quando você olha para fora, á uma grande quantidades de corvos atacando o avião, alguns estão bicando o vidro,\n E outros estão presos na turbina impedindo de funcionar e queimando\n", velocidadeRapida)
          	EscreverLento("Narrador: O avião começa a cair...\n Na primeira trincada do vidro, você se levanta. \n Na segunda, você tenta ajudar. \n Na terceira, sua visão fica turva. \n Na quarta, seu ouvido começa a zumbir. \n No quinto... tela preta...Você morreu...", velocidadeRapida)
			pare
			
			caso 1:

	          EscreverLento("Narrador: O professor leva você na garagem, onde está o buggy.\n Você adentra no buggy e segue o caminho.\n", velocidadeRapida)
	          EscreverLento("Narrador: Enquanto você dirige, de longe avista muitas plantas carnívoras", velocidadeRapida)
	          EscreverLento("Narrador: Para se prevenir que as plantas não te ataquem, você tem duas opções disponíveis no buggy. Tocha, álcool e isqueiro ou um frasco de sonífero. Qual você deseja usar\n", velocidadeRapida) 

	          leia(escolher)
	          escreva("           tocha, isqueiro e álcool                       borrífero        \n")
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
	          escolha(escolher){

			caso 0: EscreverLento("Narrador: Ao começar a remexer no bug, você pega a tocha e o isqueiro, acendendo a tocha e mirando nas plantas que se aproximavam de você, fazendo com que elas se queimassem com o fogo.\n", velocidadeRapida)
			pare
			caso 1: EscreverLento("Narrador: Ao começar a remexer no bug, você pega o borrífero(borrifador + sonífero), fazendo com que elas adormecessem.\n", velocidadeRapida)
			pare
			caso contrario: escreva("Não foi isso que foi pedido\n")
			
			leia(escolher)
	          escreva("           tocha, isqueiro e álcool                       borrífero        \n")
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
			pare
		} 
			pare
			caso contrario: escreva("Não foi isso que foi pedido\n")
			
			leia(escolher)
	          escreva("           tocha, isqueiro e álcool                       borrífero        \n")
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
			funcao StatusSorteadoAzelf()
			{
			//também tem inteiro  inteiro vidaAzelf = 120
			defesaA = u.sorteia(55, 100)
			ataqueA = u.sorteia(55, 100)
			velA = u.sorteia(55, 100)
			}
			funcao StatusSorteadoMesprit()
			{
			// também tem  inteiro vidaMesprit = 100
			 defesaM = u.sorteia(55, 100)
			 ataqueM = u.sorteia(55, 100)
			 velM = u.sorteia(55, 100)
			}
}	
		{
			escreva("Azelf morreu\n")
			vidaAzelf = 0
		}
	}
			funcao StatusSorteadoAzelf()
			{
			//também tem inteiro  inteiro vidaAzelf = 120
			defesaA = u.sorteia(55, 100)
			ataqueA = u.sorteia(55, 100)
			velA = u.sorteia(55, 100)
			}
			funcao StatusSorteadoMesprit()
			{
			// também tem  inteiro vidaMesprit = 100
			 defesaM = u.sorteia(55, 100)
			 ataqueM = u.sorteia(55, 100)
			 velM = u.sorteia(55, 100)
			}
}			

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 33842; 
 * @DOBRAMENTO-CODIGO = [455];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
