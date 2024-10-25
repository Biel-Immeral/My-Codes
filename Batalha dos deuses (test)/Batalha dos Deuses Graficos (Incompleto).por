// Tema: Mitologia Grega
//Personagens: Zeus, Hades, Poseidon, Ares
//Poderes:
//Zeus: Static Shock, Polarized Rain, Zeus's Bolt, ThunderStorm
//Hades: Life Ties, Tártaro Gates, resurrection, Soul Corruption
//Poseidon: Water Cleanse, Drowning, Atlantida Emerging, Wave Decimation
//Ares: Vengeance, Ares's Blade, Bloodied Berserk, Eternal War
//Cenário: Monte Olimpo
//Situação da Batalha: Completa
//Recompensa: Ganhar uma Cidade com teu Nome 
programa{
	inclua biblioteca Tipos --> tp
	inclua biblioteca Teclado--> t
	inclua biblioteca Graficos --> g
	inclua biblioteca Sons --> s
	inclua biblioteca Util --> u
	logico player=falso, dado_test=falso, dado_test2=falso,tecla=falso
	cadeia txt, pass, Player1 = " ", Player2 = "",poderA1, poderA2, poderA3, poderA4, poderB1, poderB2, poderB3, poderB4, ClasseA, ClasseB
	inteiro op, deus, dado, l, i, pontosA=0, pontosB=0, pontos, d1, d2, d3, countA1=0, countA2=0, countA3=0, countA4=0, countB1=0, countB2=0, countB3=0, countB4=0, mai=0, men=0, mei=0
	inteiro battle, menu
	inteiro monte_olimpo = g.carregar_imagem("monte olimpo 8px.png"),templo = g.carregar_imagem("campo batalha 8px.png"),Zeus = g.carregar_imagem("Zeus.png"),Hades = g.carregar_imagem("Hades.png"),Ares = g.carregar_imagem("Ares.png"),Poseidon = g.carregar_imagem("Poseidon.png")
	inteiro tecla_cod
	inteiro gifA1, gifA2, gifA3, gifA4, gifB1, gifB2, gifB3, gifB4
	inteiro ma1=0, ma2=0, ma3=0, ma4=0, mb1, mb2, mb3, mb4
	
	// Primeiramente temos a função inicio, que funciona como um menu que dá a opção ao jogador
	// de jogar com ou sem tutorial.
	funcao inicio(){
		menu = s.carregar_som("Menu.mp3")
		s.reproduzir_som(menu, verdadeiro)
		s.definir_volume(0)
		graf_inicio1()
		graf_inicio2()
		graf_inicio3()
		}
	
	
	//Temos aqui a função sorteia, que apenas sorteia um número inteiro de 1 a 6, como um D6 (dado de 6 lados)
	funcao inteiro sorteio(){
		dado = u.sorteia(1,6)
		retorne dado
	}
	funcao zeus(){
		se(player){
			ClasseB = "Zeus"
			poderB1 = "Static Shock"
			gifB1 = g.carregar_imagem("Static Shockless.gif")
			mb1 = s.carregar_som("staticshock.mp3")
			poderB2 = "Polarized Rain" 
			gifB2 = g.carregar_imagem("polarized rainless.gif")
			mb2 = s.carregar_som("polarizedrain.mp3")
			poderB3 = "Zeus's Bolt"
			gifB3 = g.carregar_imagem("zeus boltless.gif")
			mb3 = s.carregar_som("zeusbolt1.mp3")
			poderB4 = "ThunderStorm"
			gifB4 = g.carregar_imagem("thunderstormless.gif")
			mb4 = s.carregar_som("thunderstorm.mp3")
			escreva("Zeus Selecionado.")
		}senao{
			ClasseA = "Zeus"
			poderA1 = "Static Shock"
			gifA1 = g.carregar_imagem("Static Shockless.gif")
			ma1 = s.carregar_som("staticshock.mp3")
			poderA2 = "Polarized Rain" 
			gifA2 = g.carregar_imagem("polarized rainless.gif")
			ma2 = s.carregar_som("polarizedrain.mp3")
			poderA3 = "Zeus's Bolt"
			gifA3 = g.carregar_imagem("zeus boltless.gif")
			ma3 = s.carregar_som("zeusbolt1.mp3")
			poderA4 = "ThunderStorm"
			gifA4 = g.carregar_imagem("thunderstormless.gif")
			ma4 = s.carregar_som("thunderstorm.mp3")
			escreva("Zeus Selecionado.")
		}
	}
	funcao hades(){
		se(player){
			ClasseB = "Hades"
			poderB1 = "Life Ties"
			gifB1 = g.carregar_imagem("Life tiesless.gif")
			mb1 = s.carregar_som("lifeties.mp3")
			poderB2 = "Tártaro Gates" 
			gifB2 = g.carregar_imagem("gateslong.gif")
			mb2 = s.carregar_som("tartarogates.mp3")
			poderB3 = "Ressurection"
			gifB3 = g.carregar_imagem("ressurectionless.gif")
			mb3 = s.carregar_som("ressurection.mp3")
			poderB4 = "Soul Corruption"
			gifB4 = g.carregar_imagem("soul corruptionless.gif")
			mb4 = s.carregar_som("soulcorruption.mp3")
			escreva("Hades Selecionado.")
		}senao{
			ClasseA = "Hades"
			poderA1 = "Life ties"
			gifA1 = g.carregar_imagem("Life tiesless.gif")
			ma1 = s.carregar_som("lifeties.mp3")
			poderA2 = "Tártaro Gates" 
			gifA2 = g.carregar_imagem("gateslong.gif")
			ma2 = s.carregar_som("tartarogates.mp3")
			poderA3 = "Ressurection"
			gifA3 = g.carregar_imagem("ressurectionless.gif")
			ma3 = s.carregar_som("ressurection.mp3")
			poderA4 = "Soul Corruption"
			gifA4 = g.carregar_imagem("soul corruptionless.gif")
			ma4 = s.carregar_som("soulcorruption.mp3")
			escreva("Hades Selecionado.")
		}
	}
	funcao poseidon(){
		se(player){
			ClasseB = "Poseidon"
			poderB1 = "Water Cleanse"
			gifB1 = g.carregar_imagem("watercleanseless.gif")
			mb1 = s.carregar_som("watercleanse.mp3")
			poderB2 = "Drowning" 
			gifB2 = g.carregar_imagem("drowningless.gif")
			mb2 = s.carregar_som("drowning.mp3")
			poderB3 = "Atlantida Emerging"
			gifB3 = g.carregar_imagem("atlantidaemergingless.gif")
			mb3 = s.carregar_som("atlantidaemerging.mp3")
			poderB4 = "Wave Decimation"
			gifB4 = g.carregar_imagem("wave decimationless.gif")
			mb4 = s.carregar_som("wavedecimation.mp3")
			escreva("Poseidon Selecionado.")
		}senao{
			ClasseA = "Poseidon"
			poderA1 = "Water cleanse"
			gifA1 = g.carregar_imagem("watercleanseless.gif")
			ma1 = s.carregar_som("watercleanse.mp3")
			poderA2 = "Drowning" 
			gifA2 = g.carregar_imagem("drowningless.gif")
			ma2 = s.carregar_som("drowning.mp3")
			poderA3 = "Atlantida Emerging"
			gifA3 = g.carregar_imagem("atlantidaemergingless.gif")
			ma3 = s.carregar_som("atlantidaemerging.mp3")
			poderA4 = "Wave Decimation"
			gifA4 = g.carregar_imagem("wave decimationless.gif")
			ma4 = s.carregar_som("wavedecimation.mp3")
			escreva("Poseidon Selecionado.")
		}
	}
	funcao ares(){
		se(player){
			ClasseB = "Ares"
			poderB1 = "Vengeance"
			gifB1 = g.carregar_imagem("vengeanceless.gif")
			mb1 = s.carregar_som("vengeance.mp3")
			poderB2 = "Ares's Blade" 
			gifB2 = g.carregar_imagem("ares bladeless.gif")
			mb2 = s.carregar_som("Ares-blade.mp3")
			poderB3 = "Bloodied Berserk"
			gifB3 = g.carregar_imagem("bloodied berserkless.gif")
			mb3 = s.carregar_som("Bloodied-Berserk-modified.mp3")
			poderB4 = "Eternal War"
			gifB4 = g.carregar_imagem("aternalwarfullless.gif")
			mb4 = s.carregar_som("Eternal-War.mp3")
			escreva("Ares Selecionado.")
		}senao{
			ClasseA = "Ares"
			poderA1 = "Vengeance"
			gifA1 = g.carregar_imagem("vengeanceless.gif")	
			ma1 = s.carregar_som("vengeance.mp3")
			poderA2 = "Ares's Blade" 
			gifA2 = g.carregar_imagem("ares bladeless.gif")
			ma2 = s.carregar_som("Ares-blade.mp3")
			poderA3 = "Bloodied Berserk"
			gifA3 = g.carregar_imagem("bloodied berserkless.gif")
			ma3 = s.carregar_som("Bloodied-Berserk-modified.mp3")
			poderA4 = "Eternal War"
			gifA4 = g.carregar_imagem("aternalwarfullless.gif")
			ma4 = s.carregar_som("Eternal-War.mp3")
			escreva("Ares Selecionado.")
		}
	}
	
	//Aqui temos a primeira função complexa, que é onde o Jogador1 irá criar o seu personagem, informando seu nome
	//como jogador, e escolhendo o Deus que deseja jogar.
	funcao create_char(){
		inteiro quant
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(40,100,"Player1 digite o seu nome:(X caracteres) ")
		g.renderizar()
		u.aguarde(300)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(40,100,"Player1 digite o seu nome:(X caracteres) ")
		g.desenhar_texto(40,170,"(insira a quantidade de caracteres:(1-9))")
		g.renderizar()
		quant = t.ler_tecla()
		escolha(quant){
			caso 49:
				l = 1
			pare
			caso 50:
				l = 2
			pare
			caso 51:
				l = 3
			pare
			caso 52:
				l = 4
			pare
			caso 53:
				l = 5
			pare
			caso 54:
				l = 6
			pare
			caso 55:
				l = 7
			pare
			caso 56:
				l = 8
			pare
			caso 57:
				l = 9
			pare
			caso contrario:
				create_char()
		}
		nome_Player1()
		deus = deus_Player1()
		
	}
	
	
	//Semelhante a função anterior, essa é para o Jogador2, mas essa função é influenciada pela escolha do Deus
	//escolhido pelo Jogador1, pois o deus escolhido não irá aparecer como opção para o Jogador2.
	funcao create_char2(){
		player = verdadeiro
		inteiro quant
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(40,100,"Player2 digite o seu nome:(X caracteres) ")
		g.renderizar()
		u.aguarde(300)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(40,100,"Player2 digite o seu nome:(X caracteres) ")
		g.desenhar_texto(40,170,"(insira a quantidade de caracteres:(1-9))")
		g.renderizar()
		quant = t.ler_tecla()
		escolha(quant){
			caso 49:
				l = 1
			pare
			caso 50:
				l = 2
			pare
			caso 51:
				l = 3
			pare
			caso 52:
				l = 4
			pare
			caso 53:
				l = 5
			pare
			caso 54:
				l = 6
			pare
			caso 55:
				l = 7
			pare
			caso 56:
				l = 8
			pare
			caso 57:
				l = 9
			pare
			caso contrario:
				create_char2()
		}
		nome_Player2()
		deus = deus_Player2()
	}
	
	
	//Essa é a função principal do jogo, onde chamamos as outras funções e organizamos as partidas do jogo,
	//primeiramente iniciando o jogo, depois criando os personagens, depois rolando os dados, atacando, além
	//de mostrar os pontos deles apos a jogada de cada jogador, tendo como uma importante mecânica é a troca
	//de verdadeiro ou falso na variavel logico player, que dependendo do valor difere quem está jogando.
	funcao iniciar_jogo(){
		inteiro n
		cadeia a = "", d = "Iniciando Batalha"
		g.redimensionar_imagem(monte_olimpo, 1000, 1000, verdadeiro)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(238, 238, d)
		g.renderizar()
		d="Iniciando Batalha"
		para(i=1;i<=4;i++){
			d=d+a
			a="."
			u.aguarde(300)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(238,238,d)
			g.renderizar()
			u.aguarde(200)
		}
		create_char()
		u.aguarde(1000)
		
		create_char2()
		u.aguarde(1000)

		s.interromper_som(menu)
		battle = s.carregar_som("music.mp3")
		s.reproduzir_som(battle, verdadeiro)
		s.definir_volume_reproducao(battle, 80)
		para(n=1;n<=8;n++){
			escreva("\nRodada ",n,"/8")
			u.aguarde(1000)
			limpa()
			escreva("\nRodada ",n,"/8")
			u.aguarde(1200)
			escreva("\n\nJogue ",ClasseA,"(",Player1,"): ")
			player = verdadeiro
			pontos = dados()
			escolhe()
			escreva("\nPontos Atuais: \n",Player1 ," - " ,pontosA,"\n",Player2 ," - ",pontosB)
			escreva("\n\nPressione qualquer tecla para continuar: ")
			u.aguarde(250)
			leia(pass)
			limpa()
			u.aguarde(1500)
			escreva("\nJogue ",ClasseB,"(",Player2,"): ")
			player = falso
			pontos = dados()
			escolhe()
			escreva("\nPontos Atuais: \n",Player1 ," - " ,pontosA,"\n",Player2 ," - ",pontosB)
			escreva("\n\nPressione qualquer tecla para continuar: ")
			u.aguarde(250)
			leia(pass)
		}
		s.interromper_som(battle)
		s.reproduzir_som(menu, verdadeiro)

		limpa()
		se(pontosA > 100){
			pontosA = pontosA - 100
		}senao{
			pontosA = 100 - pontosA
		}
		se(pontosB > 100){
			pontosB = pontosB - 100
		}senao{
			pontosB = 100 - pontosB
		}

		se(pontosA < pontosB){
			escreva(Player1," Wins")
		}senao{
			se(pontosB < pontosA){
				escreva(Player2," Wins")
			}senao{
				escreva("Empate!")
			}
		}
	}
	
	
	//Uma função para apos atacar e escolher o poder, o atacante decidir se irá usar em ssssi mesmo ou no inimigo,
	//sendo que essa função utiliza do logico player, para diferenciar o jogador que está jogando.
	funcao escolhe(){
		escreva("\n\nDeseja usar essa habilidade em você ou em seu inimigo? \n1 - Você \n2 - Inimigo \nDigite um número correspondente: ")
		u.aguarde(250)
		leia(op)
		escolha(op){
			caso 1:
			se(player){
				pontosA = pontosA + pontos	
			}senao{
				pontosB = pontosB + pontos
			}
			pare
			caso 2:
			se(player){
				pontosB = pontosB + pontos
			}senao{
				pontosA = pontosA + pontos
			}
			pare
			caso contrario:
			escreva("Opção Inválida!")
			u.aguarde(1000)
			limpa()
			escolhe()	
		}
		se(pontosB<0){
			pontosB = 0
		}
		se(pontosA<0){
			pontosA = 0
		}
	}
	
	
	//A função de rolar dados, sendo a principal para o ataque, pois é ela que chama a escolha de poderes, além
	//de um sistema complexo que caso o player erre as mensagens, ele volte aonde o player estava, sem rolar
	//os dados denovo, usando variáveis logico para isso.
	funcao inteiro dados(){
		se(nao dado_test2){
			escreva("\nAgora vamos rolar os dados(1/3): ")
			se(nao dado_test){
				u.aguarde(250)
				d1 = sorteio()
				d2 = sorteio()
				d3 = sorteio()
			}
			dado_test=falso
			escreva("\nDado1: ",d1,"\nDado2: ",d2,"\nDado3: ",d3)
			escreva("\n\nDeseja rolar os dados novamente? \n1 - Sim \n2 - Não \nDigite um número correspondente: ")
			u.aguarde(250)
			leia(txt)
			op = verificar2(txt)
		}
			escolha(op){
				caso 1:
					limpa()
					escreva("\nAgora vamos rolar os dados(2/3): ")
					se(nao dado_test2){
						u.aguarde(250)
						d1 = sorteio()
						d2 = sorteio()
						d3 = sorteio()
					}
					escreva("\nDado1: ",d1,"\nDado2: ",d2,"\nDado3: ",d3)
					escreva("\n\nDeseja rolar os dados novamente? \n1 - Sim \n2 - Não \nDigite um número correspondente: ")
					u.aguarde(250)
					leia(txt)
					op = verificar2(txt)
					escolha(op){
						caso 1:
							limpa()
							escreva("\nAgora vamos rolar os dados(3/3): ")
							d1 = sorteio()
							d2 = sorteio()
							d3 = sorteio()
							dado_test2=falso
							escreva("\nDado1: ",d1,"\nDado2: ",d2,"\nDado3: ",d3)
							escreva("\nVocê não consegue mais rolar os dados, então ficará com esses mesmos.")
							u.aguarde(2500)
							pontos = ataque()
						pare
						caso 2:
							pontos = ataque()
						pare
						caso contrario:
							dado_test=verdadeiro
							dado_test2=verdadeiro
							op=1
							escreva("Opção Inválida! \n")
							u.aguarde(1500)
							limpa()
							dados()
					}
				pare
				caso 2:
					pontos = ataque()
				pare
				caso contrario:
					dado_test=verdadeiro
					escreva("\nOpção Inválida! \n")
					u.aguarde(1500)
					limpa()
					dados()
		}
		retorne pontos
	}
	
	
	//A função ataque é a mais interresante, por ser aquela que o player poderá escolher o poder que vai usar,
	//usando a mesma variável logico player, além de termos um sistema de contagem de 2, para cada poder de cada
	//player, alem dos calculos para cada poder.
	funcao inteiro ataque(){
		pontos = 0
		limpa()
		u.aguarde(1000)
		escreva("\nEntendido, os seus números são: ",d1,", ",d2," e ",d3)
		se(player){
			escreva("\nAgora usando esses números escolha um poder para ser usado: \n1 - ",poderA1,"(Soma)(",countA1,"/2) \n2 - ",poderA2,"(Subtração)(",countA2,"/2) \n3 - ",poderA3,"(Multiplicação)(",countA3,"/2) \n4 - ",poderA4,"(Divisão)(",countA4,"/2) \nDigite o número correspondente: ")
		}senao{
			escreva("\nAgora usando esses números escolha um poder para ser usado: \n1 - ",poderB1,"(Soma)(",countB1,"/2) \n2 - ",poderB2,"(Subtração)(",countB2,"/2) \n3 - ",poderB3,"(Multiplicação)(",countB3,"/2) \n4 - ",poderB4,"(Divisão)(",countB4,"/2) \nDigite o número correspondente: ")
		}
		u.aguarde(250)
		leia(txt)
		op = verificar4(txt)
		u.aguarde(500)
		escolha(op){
			caso 1:
				se(player){
					se(countA1==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos + d1 + d2 + d3
						escreva("\nVocê usou ",poderA1,"!")
						animacao(gifA1, ma1)
						countA1++
					}
				}senao{
					se(countB1==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos + d1 + d2 + d3
						escreva("\nVocê usou ",poderB1,"!")
						animacao(gifB1, mb1)
						countB1++
					}
				}
			pare
			caso 2:
				se(player){
					se(countA2==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos - d1 - d2 - d3
						escreva("\nVocê usou ",poderA2,"!")
						animacao(gifA2, ma2)
						countA2++
					}
				}senao{
					se(countB2==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos - d1 - d2 - d3
						escreva("\nVocê usou ",poderB2,"!")
						animacao(gifB2, mb2)
						countB2++
					}
				}
			pare
			caso 3:
				se(player){
					se(countA3==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos + (d1 * d2 * d3)
						escreva("\nVocê usou ",poderA3,"!")
						animacao(gifA3, ma3)
						countA3++
					}
				}senao{
					se(countB3==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						pontos = pontos + (d1 * d2 * d3)
						escreva("\nVocê usou ",poderB3,"!")
						animacao(gifB3, mb3)
						countB3++
					}
				}
			pare
			caso 4:
				se(player){
					se(countA4==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						teste()
						pontos = pontos + (mai / mei / men)
						escreva("\nVocê usou ",poderA4,"!")
						animacao(gifA4, ma4)
						countA4++
					}
				}senao{
					se(countB4==2){
						escreva("Poder não possui mais cargas.\n")
						ataque()
					}senao{
						teste()
						pontos = pontos + (mai / mei / men)
						escreva("\nVocê usou ",poderB4,"!")
						animacao(gifB4, mb4)
						countB4++
					}
				}
				mai = 0
				mei = 0
				men = 0
			pare
			caso contrario:
				escreva("Ataque Inválido! \n")
				u.aguarde(1500)
				limpa()
				ataque()
		}
		retorne pontos
	}
	
	
	//Uma função simples, apenas para o calculo de maior, meio e menor, sem a necessidade de repetir 2 vezes na
	//função de ataque.
	funcao teste(){
		se(d1 >= d2 e d1 >= d3){
			mai = d1
		}senao{
			se(d2 >= d3){
				mai = d2
			}senao{
				mai = d3
			}
		}
		se(d1 <= d2 e d1 <= d3){
			men = d1
		}senao{
			se(d2 <= d3){
				men = d2
			}senao{
				men = d3
			}
		}
		mei = d1 + d2 + d3 - mai - men
	}
	
	
	//A função tutorial é muito mais para organizar do que ser funcional, pois ela otimiza e organiza o tutorial
	//que os players terão, para poder eles entenderem perfeitamente o jogo.
	funcao tutorial(){
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nObjetivo:\nAlcance o mais próximo de 100 pontos em 24 jogadas (8 rodadas com até 3 arremessos) usando poderes especiais. \nO jogador com a pontuação mais alta no final das rodadas vence.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nClasses dos Ancestrais:\nNo início do jogo, cada jogador escolhe uma das quatro classes ancestrais, \nque representam grandes deuses mitológicos:\n- Zeus\n- Hades\n- Poseidon\n- Ares\nA escolha da classe não altera os efeitos dos poderes, mas muda o nome dos poderes, dando um toque temático à sua jogabilidade.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nRegras Básicas:\n1. Início do Jogo:\n- Ambos os jogadores começam com 0 pontos.")
		u.aguarde(2000)
		escreva("\n\n2. Rodadas:\n- O jogo é composto por 8 rodadas alternadas para cada jogador.\n- Em cada rodada, o jogador pode jogar 3 dados, até 3 vezes,\n  e escolher uma das três tentativas.")
		u.aguarde(3500)
		escreva("\n\n3. Poderes:\n- Após escolher o conjunto de dados, o jogador deve escolher um poder.\n- Cada poder pode ser usado apenas duas vezes durante o jogo,\n e pode ser aplicado na própria pontuação ou na do oponente.")
		u.aguarde(3500)
		escreva("\n\n4. Tipos de Poderes:\n Zeus:\n- 'Static Shock' (soma),\n- 'Polarized Rain' (subtração),\n- 'Zeus's Bolt' (multiplicação),\n- 'ThunderStorm' (divisão)")
		u.aguarde(3000)
		escreva("\n Hades:\n- 'Life Ties' (soma),\n- 'Tártaro Gates' (subtração),\n- 'Ressurection' (multiplicação),\n- 'Soul Corruption' (divisão).")
		u.aguarde(3000)
		escreva("\n Poseidon:\n- 'Water Cleanse' (soma),\n- 'Drowning' (subtração),\n- 'Atlantida Emerging' (multiplicação),\n- 'Wave Decimation' (divisão).")
		u.aguarde(3000)
		escreva("\n Ares:\n- 'Vengeance' (soma),\n- 'Ares's Blade' (subtração),\n- 'Bloodied Berserk' (multiplicação),\n- 'Eternal War' (divisão).")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nCondições de Vitória:\n- O objetivo é atingir ou se aproximar de 100 pontos após as 8 rodadas.\n- O jogador com a pontuação mais próxima de 100 no final é o vencedor.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nDicas:\n- Escolha sua classe ancestral de acordo com o estilo de jogo que prefere.\n- Planeje o uso dos poderes estrategicamente para maximizar sua pontuação ou prejudicar a do seu oponente.\n- Lembre-se que cada poder só pode ser usado duas vezes, então escolha sabiamente quando utilizá-los.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nPrepare-se para uma batalha épica entre os poderes dos deuses! Boa sorte!")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
	}
	funcao animacao(inteiro gif, inteiro mus){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(512, 512)
		inteiro j
		j = g.obter_numero_quadros_gif(gif)
		s.definir_volume_reproducao(battle, 70)
		u.aguarde(500)
		s.definir_volume_reproducao(battle, 60)
		u.aguarde(500)
		s.definir_volume_reproducao(battle, 50)
		s.reproduzir_som(mus, falso)
		s.definir_volume_reproducao(mus, 100)
		para(i=1;i<j;i++){
			g.definir_quadro_gif(gif, i)
			g.desenhar_imagem(0, 0, gif)
			g.renderizar()
			u.aguarde(50)
		}
		s.definir_volume_reproducao(battle, 60)
		u.aguarde(500)
		s.definir_volume_reproducao(battle, 70)
		u.aguarde(500)
		s.definir_volume_reproducao(battle, 80)
		g.encerrar_modo_grafico()
	}
	funcao inteiro verificar3(cadeia txt_op){
		inteiro opc
		se(txt_op == "1" ou txt_op == "2" ou txt_op == "3"){
			opc = tp.cadeia_para_inteiro(txt_op, 10)
		}senao{
			opc = 9
		}
		retorne opc
	}
	funcao inteiro verificar4(cadeia txt_op){
		inteiro opc
		se(txt_op == "1" ou txt_op == "2" ou txt_op == "3" ou txt_op == "4"){
			opc = tp.cadeia_para_inteiro(txt_op, 10)
		}senao{
			opc = 9
		}
		retorne opc
	}
	funcao inteiro verificar2(cadeia txt_op){
		inteiro opc
		se(txt_op == "1" ou txt_op == "2"){
			opc = tp.cadeia_para_inteiro(txt_op, 10)
		}senao{
			opc = 9
		}
		retorne opc
	}
	funcao inteiro verificar5(cadeia txt_op){
		inteiro opc
		se(txt_op == "1" ou txt_op == "2" ou txt_op == "3" ou txt_op == "4" ou txt_op == "5"){
			opc = tp.cadeia_para_inteiro(txt_op, 10)
		}senao{
			opc = 9
		}
		retorne opc
	}
	funcao graf_inicio1 (){
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(800,800)
		g.definir_tamanho_texto(40.0)
		g.carregar_fonte("04B_30__.TTF")
		g.definir_fonte_texto("04b")
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(90,100,"Batalha dos Deuses")
		g.renderizar()
		u.aguarde(1500)
	}
	funcao graf_inicio2(){
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.definir_tamanho_texto(40.0)
		g.carregar_fonte("04B_30__.TTF")
		g.definir_fonte_texto("04b")
		g.desenhar_texto(90, 100, "Batalha dos Deuses")
		g.definir_tamanho_texto(25.0)
		g.desenhar_texto(145, 200, "(Press Enter to Continue)")
		g.renderizar()
		tecla_cod = t.ler_tecla()
		se(tecla_cod==10){
			g.definir_tamanho_texto(20.0)
			g.desenhar_imagem(0, 0,monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.desenhar_texto(50,200,"\n1 - Jogar")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.desenhar_texto(50,200,"\n1 - Jogar")
			g.desenhar_texto(250,200, "\n2 - Tutorial")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.desenhar_texto(50,200,"\n1 - Jogar")
			g.desenhar_texto(250,200, "\n2 - Tutorial")
			g.desenhar_texto(500,200, "\n3 - Historia")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.desenhar_texto(50,200,"\n1 - Jogar")
			g.desenhar_texto(250,200, "\n2 - Tutorial")
			g.desenhar_texto(500,200, "\n3 - Historia")
			g.desenhar_texto(150,290, "\n4 - Creditos")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
			g.desenhar_texto(50,200,"\n1 - Jogar")
			g.desenhar_texto(250,200, "\n2 - Tutorial")
			g.desenhar_texto(500,200, "\n3 - Historia")
			g.desenhar_texto(150,290, "\n4 - Creditos")
			g.desenhar_texto(400,290, "\n5 - Sair")
			g.renderizar()
			u.aguarde(800)
		}senao{
			graf_inicio2()
		}
	}
	funcao graf_inicio3(){
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(50, 100, "Bem Vindos ao Jogo, escolha umas das opcoes:")
		g.desenhar_texto(50,200,"1 - Jogar")
		g.desenhar_texto(250,200, "2 - Tutorial")
		g.desenhar_texto(500,200, "3 - Historia")
		g.desenhar_texto(150,290, "4 - Creditos")
		g.desenhar_texto(400,290, "5 - Sair")
		
		g.renderizar()
		tecla_cod = t.ler_tecla()
		se((tecla_cod > 48 e tecla_cod < 54) ou (tecla_cod > 96 e tecla_cod < 102)){
			g.desenhar_imagem(0, 0, monte_olimpo)
			escolha(tecla_cod){
				caso 49:
					iniciar_jogo()
					graf_inicio3()
				pare
				caso 97:
					iniciar_jogo()
					graf_inicio3()
				pare
				caso 50:
					tutorial()
					graf_inicio3()
				pare
				caso 98:
					tutorial()
					graf_inicio3()
				pare
				caso 51:
					historia()
					graf_inicio3()
				pare
				caso 99:
					historia()
					graf_inicio3()
				pare
				caso 52:
					creditos()
					graf_inicio3()
				pare
				caso 100:
					creditos()
					graf_inicio3()
				pare
				caso 53:
				
				pare
				caso 101:
				
				pare
				caso contrario:
					escreva("Opção Inválida!\n")
					graf_inicio3()
			}
		}senao{
			graf_inicio3()
		}
					//"Bem Vindos ao Jogo, deseja iniciar com o Tutorial? \n1 - Sim \n2 - Não \nDigite um número correspondente: "
	}
	funcao nome_Player1(){
		inteiro a
		caracter b
		cadeia c, d=" ",g
		//
		g.desenhar_imagem(0, 0,monte_olimpo)
		g.desenhar_texto(145, 150, "(Press Enter to Continue)")
		g.renderizar()
		a = t.ler_tecla()
		se(a==10){
			g.limpar()
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(100, 100, " |")
			g.renderizar()
			para(i=1;i<=l;i++){
				g.desenhar_imagem(0, 0, monte_olimpo)
				a = t.ler_tecla()
				b = t.caracter_tecla(a)
				c =  tp.caracter_para_cadeia(b)
				d = d+c
				g = d+" |"
				g.desenhar_texto(100, 100, g)
				g.renderizar()
			}
		}senao{
			create_char()
		}
		u.aguarde(800)
			g.limpar()
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(100, 100, d)
			g.desenhar_texto(100, 130, "Você gostaria de mudar de nome?")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0,0,monte_olimpo)
			g.desenhar_texto(100, 100, "Você gostaria de mudar de nome?")
			g.desenhar_texto(100, 130,"Pressione qualquer tecla se sim" )
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0,0,monte_olimpo)
			g.desenhar_texto(100, 100, "Você gostaria de mudar de nome?")
			g.desenhar_texto(100, 130,"Pressione qualquer tecla se sim" )
			g.desenhar_texto(100,160,"Pressione Enter se não")
			g.renderizar()
			a = t.ler_tecla()
			se(a == 10){
				Player1 = d
			}senao{
				nome_Player1()
			}
	}
	funcao nome_Player2(){
		inteiro a
		caracter b
		cadeia c, d=" ",g
		//
		g.desenhar_imagem(0, 0,monte_olimpo)
		g.desenhar_texto(360, 300, "(Press Enter to Continue)")
		g.renderizar()
		a = t.ler_tecla()
		se(a==10){
			g.limpar()
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.renderizar()
			para(i=1;i<=l;i++){
				g.desenhar_imagem(0, 0, monte_olimpo)
				a = t.ler_tecla()
				b = t.caracter_tecla(a)
				c =  tp.caracter_para_cadeia(b)
				d = d+c
				g = d+" |"
				g.desenhar_texto(100, 100, g)
				g.renderizar()
			}
		}senao{
			create_char2()
		}
		u.aguarde(800)
			g.limpar()
			g.desenhar_imagem(0, 0, monte_olimpo)
			g.desenhar_texto(100, 100, d)
			g.desenhar_texto(100, 100, "Você gostaria de mudar de nome?")
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0,0,monte_olimpo)
			g.desenhar_texto(100, 100, "Você gostaria de mudar de nome?")
			g.desenhar_texto(100, 130,"Pressione qualquer tecla se sim" )
			g.renderizar()
			u.aguarde(800)
			g.desenhar_imagem(0,0,monte_olimpo)
			g.desenhar_texto(100, 100, "Você gostaria de mudar de nome?")
			g.desenhar_texto(100, 130,"Pressione qualquer tecla se sim" )
			g.desenhar_texto(100,160,"Pressione Enter se não")
			g.renderizar()
			a = t.ler_tecla()
			se(a == 10){
				Player2 = d
			}senao{
				nome_Player2()
			}
			
			g.desenhar_texto(100, 250, "Escolha o seu Deus")
			u.aguarde(1000)
}
	funcao inteiro deus_Player1(){
		inteiro a
		caracter b
		cadeia c
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(100, 100, "Escolha o seu Deus,(Pressionando o número correspondente")
		g.renderizar()
		u.aguarde(1500)
		g.desenhar_imagem(0, 288,Zeus)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(100, 100, "Zeus:Deus dos raios - 1")
		g.renderizar()
		u.aguarde(3000)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_imagem(144,288, Hades)
		g.desenhar_texto(100, 100, "Hades:Deus do Submundo - 2")
		g.renderizar()
		u.aguarde(3000)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_imagem(288,288,Poseidon)
		g.desenhar_texto(100, 100, "Poseidon:Deus dos Mares - 3")
		g.renderizar()
		u.aguarde(3000)
		g.desenhar_imagem(432,272,Ares)
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(100, 100, "Ares:Deus da Guerra - 4")
		g.renderizar()
		u.aguarde(3000)
		g.desenhar_texto(100, 100, "Digite o Deus escolhido:")
		g.renderizar()
		op = t.ler_tecla()
		b = t.caracter_tecla(op)
		c =  tp.caracter_para_cadeia(b)
		g.definir_tamanho_texto(50)
		g.desenhar_texto(100, 150, c)
		g.renderizar()
		u.aguarde(800)
		g.definir_tamanho_texto(30)
		escolha(op){
			//49,97
			caso 49:
				g.desenhar_texto(100, 210, "Zeus")
				u.aguarde(2000)
				deus=1
				zeus()
			pare
			caso 50:
				g.desenhar_texto(100,210,"Hades")
				u.aguarde(2000)
				deus=2
				hades()
			pare
			caso 51:
				g.desenhar_texto(100,210,"Poseidon")
				u.aguarde(2000)
				deus=3
				poseidon()
			pare
			caso 52:
				g.desenhar_texto(100,210,"Ares")
				u.aguarde(2000)
				deus=4
				ares()
			pare
			caso 97:
				deus=1
				zeus()
			pare
			caso 98:
				deus=2
				hades()
			pare
			caso 99:
				deus=3
				poseidon()
			pare
			caso 100:
				deus=4
				ares()
			caso contrario:
				escreva("Deus Inválido!\n")
				u.aguarde(1000)
				g.limpar()
				deus_Player1()
		}
	retorne deus
	}
	
	funcao zeus_graf(inteiro f){
		g.desenhar_imagem(0, 288,Zeus)
		g.definir_cor(g.COR_BRANCO)
		cadeia god = "Zeus: Deus dos raios - " + f
		g.desenhar_texto(100, 100, god)
		g.renderizar()
	}
	funcao hades_graf(inteiro f){
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_imagem(144,288, Hades)
		cadeia god = "Hades:Deus do Submundo - " + f
		g.desenhar_texto(100, 100, god)
		g.renderizar()
	}
	funcao poseidon_graf(inteiro f){
		g.desenhar_imagem(288,288,Poseidon)
		g.definir_cor(g.COR_BRANCO)
		cadeia god = "Poseidon:Deus dos Mares - " + f
		g.desenhar_texto(100, 100, god)
		g.renderizar()
	}
	funcao ares_graf(inteiro f){
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_imagem(332,272,Ares)
		cadeia god = "Ares:Deus da Guerra - " + f
		g.desenhar_texto(100, 100, god)
		g.renderizar()
	}
	funcao inteiro deus_Player2(){
		inteiro a, f
		caracter b
		cadeia c
		g.definir_cor(g.COR_BRANCO)
		g.desenhar_texto(100, 100, "Escolha o seu Deus,(Pressionando o número correspondente")
		g.renderizar()
		u.aguarde(1500)
		escolha(deus){
			caso 1:
				f=1
				hades_graf(f)
				u.aguarde(3000)
				f=2
				poseidon_graf(f)
				u.aguarde(3000)
				f=3
				ares_graf(f)
			pare
			caso 2:
				f=1
				zeus_graf(f)
				u.aguarde(3000)
				f=2
				poseidon_graf(f)
				u.aguarde(3000)
				f=3
				ares_graf(f)
			pare
			caso 3:
				f=1
				zeus_graf(f)
				u.aguarde(3000)
				f=2
				hades_graf(f)
				u.aguarde(3000)
				f=3
				ares_graf(f)
			pare
			caso 4:
				f=1
				zeus_graf(f)
				u.aguarde(3000)
				f=2
				hades_graf(f)
				u.aguarde(3000)
				f=3
				poseidon_graf(f)
			pare
		}
		u.aguarde(3000)
		g.desenhar_texto(100, 100, "Digite o Deus escolhido:")
		op = t.ler_tecla()
		b = t.caracter_tecla(op)
		c =  tp.caracter_para_cadeia(b)
		g.definir_tamanho_texto(50)
		g.desenhar_texto(100, 150, c)
		g.renderizar()
		u.aguarde(800)
		g.definir_tamanho_texto(30)
		escolha(op){
			//49,97
			caso 49:
				se(deus != 1){
					g.desenhar_texto(100, 210, "Zeus")
					u.aguarde(2000)
					deus=1
					zeus()
				}senao{
					g.desenhar_texto(100,210,"Hades")
					u.aguarde(2000)
					deus=2
					hades()
				}
			pare
			caso 50:
				se(deus != 2){
					g.desenhar_texto(100,210,"Hades")
					u.aguarde(2000)
					deus=2
					hades()
				}senao{
					g.desenhar_texto(100,210,"Poseidon")
					u.aguarde(2000)
					deus=4
					poseidon()
				}
			pare
			caso 51:
				se(deus != 3 ou deus != 2){
					g.desenhar_texto(100,210,"Poseidon")
					u.aguarde(2000)
					deus=4
					poseidon()
				}senao{g.desenhar_texto(100,210,"Ares")
					u.aguarde(2000)
					deus=3
					ares()
				}
			pare
			caso contrario:
				escreva("Deus Inválido!\n")
				u.aguarde(1000)
				g.limpar()
				deus_Player2()
		}
	retorne deus
	}
	funcao creditos(){
		
		g.carregar_fonte("04B_30__.TTF")
		g.definir_fonte_texto("04b")
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.definir_tamanho_texto(20.0)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.renderizar()
		u.aguarde(400)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.desenhar_texto(20, 150,"Debora Sanches Rudy - Programacao e Animacoes" )
		g.renderizar()
		u.aguarde(500)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.desenhar_texto(20, 150,"Debora Sanches Rudy - Programacao e Animacoes" )
		g.desenhar_texto(20, 200, "Amos Pacheco Ferreira - Programacao e Graficos")
		g.renderizar()
		u.aguarde(500)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.desenhar_texto(20, 150,"Debora Sanches Rudy - Programacao e Animacoes" )
		g.desenhar_texto(20, 200, "Amos Pacheco Ferreira - Programacao e Graficos")
		g.desenhar_texto(20, 250, "Maria Eduarda Mello Mendes - Programacao e Arte")
		g.renderizar()
		u.aguarde(500)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.desenhar_texto(20, 150,"Debora Sanches Rudy - Programacao e Animacoes" )
		g.desenhar_texto(20, 200, "Amos Pacheco Ferreira - Programacao e Graficos")
		g.desenhar_texto(20, 250, "Maria Eduarda Mello Mendes - Programacao e Arte")
		g.desenhar_texto(20, 300, "Isabela Silva Moreira - Programacao e Sons")
		g.renderizar()
		u.aguarde(500)
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.definir_cor(g.COR_AMARELO)
		g.desenhar_texto(20, 100, "Gabriel Ribeiro Lourenco - Programacao principal")
		g.definir_cor(g.COR_VERDE)
		g.desenhar_texto(20, 150,"Debora Sanches Rudy - Programacao e Animacoes" )
		g.definir_cor(g.COR_VERMELHO)
		g.desenhar_texto(20, 200, "Amos Pacheco Ferreira - Programacao e Graficos")
		inteiro pink= g.criar_cor(212, 5, 235)
		g.definir_cor(pink)
		g.desenhar_texto(20, 250, "Maria Eduarda Mello Mendes - Programacao e Arte")
		g.definir_cor(g.COR_AZUL)
		g.desenhar_texto(20, 300, "Isabela Silva Moreira - Programacao e Sons")
		g.definir_cor(g.COR_PRETO)
		g.desenhar_texto(20, 350, "Pressione qualquer tecla para continuar: ")
		g.renderizar()
		t.ler_tecla()
		graf_inicio2()
	}
	funcao historia(){
		g.carregar_fonte("04B_30__.TTF")
		g.definir_fonte_texto("04b")
		g.definir_tamanho_texto(15.0)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.renderizar()
		u.aguarde(1600)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.renderizar()
		u.aguarde(950)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.desenhar_texto(20, 200, "Zeus a via como uma extensão de seu domínio celestial, \n")
		g.renderizar()
		u.aguarde(950)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.desenhar_texto(20, 200, "Zeus a via como uma extensão de seu domínio celestial, \n")
		g.desenhar_texto(20, 250, "Hades desejava expandir sua influência sobre os mortos, \n")
		g.renderizar()
		u.aguarde(950)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.desenhar_texto(20, 200, "Zeus a via como uma extensão de seu domínio celestial, \n")
		g.desenhar_texto(20, 250, "Hades desejava expandir sua influência sobre os mortos, \n")
		g.desenhar_texto(20, 300, "e Poseidon deseja esse território pois ele terá acesso a uma nova região próspera.\n")
		g.renderizar()
		u.aguarde(950)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.desenhar_texto(20, 200, "Zeus a via como uma extensão de seu domínio celestial, \n")
		g.desenhar_texto(20, 250, "Hades desejava expandir sua influência sobre os mortos, \n")
		g.desenhar_texto(20, 300, "e Poseidon deseja esse território pois ele terá acesso a uma nova região próspera.\n")
		g.desenhar_texto(20, 350, "Com o destino de Eterna em jogo, um antigo ritual selecionou dois deuses para lutar diretamente pelo controle, \n")
		g.renderizar()
		u.aguarde(1400)
		
		g.desenhar_imagem(0, 0, monte_olimpo)
		g.desenhar_texto(20, 50, "No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e ")
		g.desenhar_texto(20, 100, "Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.")
		g.desenhar_texto(20, 150, "Ares queria a cidade como símbolo de seu poder bélico, \n")
		g.desenhar_texto(20, 200, "Zeus a via como uma extensão de seu domínio celestial, \n")
		g.desenhar_texto(20, 250, "Hades desejava expandir sua influência sobre os mortos, \n")
		g.desenhar_texto(20, 300, "e Poseidon deseja esse território pois ele terá acesso a uma nova região próspera.\n")
		g.desenhar_texto(20, 350, "Com o destino de Eterna em jogo, um antigo ritual selecionou dois deuses para lutar diretamente pelo controle, \n")
		g.desenhar_texto(20, 400, "A batalha no Monte Olimpo determinaria não apenas a posse da cidade, mas também a supremacia divina eterna.\n\n")
		g.desenhar_texto(20, 450, "Pressione enter para continuar: ")
		g.renderizar()
		
		t.ler_tecla()
		graf_inicio2()

	}
	funcao liberar(){
			g.liberar_imagem(gifA1)
			g.liberar_imagem(gifA2)
			g.liberar_imagem(gifA3)
			g.liberar_imagem(gifA4)
			g.liberar_imagem(gifB1)
			g.liberar_imagem(gifB2)
			g.liberar_imagem(gifB3)
			g.liberar_imagem(gifB4)
			s.liberar_som(ma1)
			s.liberar_som(ma2)
			s.liberar_som(ma3)
			s.liberar_som(ma4)
			s.liberar_som(mb1)
			s.liberar_som(mb2)
			s.liberar_som(mb3)
			s.liberar_som(mb4)
			countA1=0
			countA2=0
			countA3=0
			countA4=0
			countB1=0
			countB2=0
			countB3=0
			countB4=0
			pontosA=0
			pontosB=0
		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 35726; 
 * @DOBRAMENTO-CODIGO = [38, 75, 108, 141, 669, 694, 703, 712, 721];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */