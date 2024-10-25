//Tema: Mitologia Grega
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
	inclua biblioteca Graficos --> g
	inclua biblioteca Sons --> s
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tp
	logico player=falso, dado_test=falso, dado_test2=falso
	cadeia pass, Player1, poderA1, poderA2, poderA3, poderA4, Player2, poderB1, poderB2, poderB3, poderB4, ClasseA, ClasseB
	cadeia txt
	inteiro op, a=0, deus, dado, i, pontosA=0, pontosB=0, pontos, d1, d2, d3, countA1=0, countA2=0, countA3=0, countA4=0, countB1=0, countB2=0, countB3=0, countB4=0, mai=0, men=0, mei=0
	inteiro battle, menu
	inteiro gifA1, gifA2, gifA3, gifA4, gifB1, gifB2, gifB3, gifB4
	inteiro ma1=0, ma2=0, ma3=0, ma4=0, mb1, mb2, mb3, mb4
	
	// Primeiramente temos a função inicio, que funciona como um menu que dá a opção ao jogador
	// de jogar com ou sem tutorial.
	funcao inicio(){
		se(a==0){
			menu = s.carregar_som("Menu.mp3")
			s.reproduzir_som(menu, verdadeiro)
			s.definir_volume(100)
			s.definir_volume_reproducao(menu, 80)
			a++
		}
		escreva("Bem Vindos ao Jogo, escolha umas das opções? \n1 - Jogar \n2 - Tutorial \n3 - História \n4 - Créditos \n5 - Sair \nDigite um número correspondente: ")
		u.aguarde(250)
		leia(txt)
		op = verificar5(txt)
		limpa()
		escolha(op){
			caso 1:
				iniciar_jogo()
				a=0
				inicio()
			pare
			caso 2:
				tutorial()
				inicio()
			pare
			caso 3:
				historia()
				inicio()
			pare
			caso 4:
				creditos()
				inicio()
			pare
			caso 5:
				
			pare
			caso contrario:
				escreva("Opção Inválida!\n")
				inicio()
		}
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

		escreva("\nEscolha o seu Deus: \n1 - Zeus \n2 - Hades \n3 - Poseidon \n4 - Ares \nDigite o número correspondente: ")
		u.aguarde(250)
		leia(txt)
		op = verificar4(txt)
		escolha(op){
			caso 1:
				deus=1
				zeus()
			pare
			caso 2:
				deus=2
				ClasseA = "Hades"
				hades()
			pare
			caso 3:
				deus=3
				poseidon()
			pare
			caso 4:
				deus=4
				ares()
			pare
			caso contrario:
				escreva("Deus Inválido!\n")
				u.aguarde(1000)
				limpa()
				create_char()
		}
		retorne
	}
	
	
	//Semelhante a função anterior, essa é para o Jogador2, mas essa função é influenciada pela escolha do Deus
	//escolhido pelo Jogador1, pois o deus escolhido não irá aparecer como opção para o Jogador2.
	funcao create_char2(){
		
		escolha(deus){
			caso 1:
			escreva("\nEscolha o seu Deus: \n1 - Hades \n2 - Poseidon \n3 - Ares \nDigite o número correspondente: ")
			u.aguarde(250)
			leia(txt)
			op = verificar3(txt)
			escolha(op){
				caso 3:
					ares()
				pare
				caso 1:
					hades()
				pare
				caso 2:
					poseidon()
				pare
				caso contrario:
					escreva("Deus Inválido! \n")
					u.aguarde(1000)
					limpa()
					create_char2()
			}
			pare
			caso 2:
			escreva("\nEscolha o seu Deus: \n1 - Zeus \n2 - Poseidon \n3 - Ares \nDigite o número correspondente: ")
			u.aguarde(250)
			leia(txt)
			op = verificar3(txt)
			escolha(op){
				caso 1:
					zeus()
				pare
				caso 3:
					ares()
				pare
				caso 2:
					poseidon()
				pare
				caso contrario:
					escreva("Deus Inválido! \n")
					u.aguarde(1000)
					limpa()
					create_char2()
			}
			pare
			caso 3:
			escreva("\nEscolha o seu Deus: \n1 - Zeus \n2 - Hades \n3 - Ares \nDigite o número correspondente: ")
			u.aguarde(250)
			leia(txt)
			op = verificar3(txt)
			escolha(op){
				caso 1:
					zeus()
				pare
				caso 2:
					hades()
				pare
				caso 3:
					ares()
				pare
				caso contrario:
					escreva("Deus Inválido! \n")
					u.aguarde(1000)
					limpa()
					create_char2()
			}
			pare
			caso 4:
			escreva("\nEscolha o seu Deus: \n1 - Zeus \n2 - Hades \n3 - Poseidon \nDigite o número correspondente: ")
			u.aguarde(250)
			leia(txt)
			op = verificar3(txt)
			escolha(op){
				caso 1:
					zeus()
				pare
				caso 2:
					hades()
				pare
				caso 3:
					poseidon()
				pare
				caso contrario:
					escreva("Deus Inválido! \n")
					u.aguarde(1000)
					limpa() 
					create_char2()
			}
			pare
			caso contrario:
			create_char2()
		}
		player=falso
		retorne
	}
	
	
	//Essa é a função principal do jogo, onde chamamos as outras funções e organizamos as partidas do jogo,
	//primeiramente iniciando o jogo, depois criando os personagens, depois rolando os dados, atacando, além
	//de mostrar os pontos deles apos a jogada de cada jogador, tendo como uma importante mecânica é a troca
	//de verdadeiro ou falso na variavel logico player, que dependendo do valor difere quem está jogando.
	funcao iniciar_jogo(){
		inteiro n
		liberar()
		escreva("\nBem Vindos Jogadores, iniciando")
		para(i=1;i<=3;i++){
			u.aguarde(300)
			escreva(".")
		}
		escreva("\n\nPlayer1 digite o seu nome: ")
		u.aguarde(250)
		leia(Player1)
		create_char()
		u.aguarde(1000)
		
		escreva("\n\nPlayer2 digite o seu nome: ")
		u.aguarde(250)
		leia(Player2)
		player=verdadeiro
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
		s.definir_volume(70)

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
		liberar()
	}
	
	
	//Uma função para apos atacar e escolher o poder, o atacante decidir se irá usar em si mesmo ou no inimigo,
	//sendo que essa função utiliza do logico player, para diferenciar o jogador que está jogando.
	funcao escolhe(){
		escreva("\n\nDeseja usar essa habilidade em você ou em seu inimigo? \n1 - Você \n2 - Inimigo \nDigite um número correspondente: ")
		u.aguarde(250)
		leia(txt)
		op = verificar2(txt)
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
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nObjetivo:\nAlcance o mais próximo de 100 pontos em 16 turnos (8 rodadas para cada Player) usando poderes especiais. \nO jogador com a pontuação mais próxima de 100 no final das rodadas vence.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nClasses dos Ancestrais:\nNo início do jogo, cada jogador escolhe um dos quatro deuses, \nque são grandes deuses mitológicos:\n- Zeus\n- Hades\n- Poseidon\n- Ares\nA escolha da classe não altera os efeitos dos poderes, mas muda o nome dos poderes.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nRegras Básicas:\n1. Início do Jogo:\n- Ambos os jogadores começam com 0 pontos.")
		u.aguarde(2000)
		escreva("\n\n2. Rodadas:\n- O jogo é composto por 8 rodadas alternadas para cada jogador.\n- Em cada rodada, o jogador pode jogar 3 dados, até 3 vezes,\n  e ficará com a última jogada.")
		u.aguarde(3500)
		escreva("\n\n3. Poderes:\n- Após escolher o conjunto de dados, o jogador deve escolher um poder.\n- Cada poder pode ser usado apenas duas vezes durante o jogo,\n e pode ser aplicado na própria pontuação ou na do oponente.")
		u.aguarde(3500)
		escreva("\n\n4. Deuses e seus Poderes:\n Zeus:\n- 'Static Shock' (soma);\n- 'Polarized Rain' (subtração);\n- 'Zeus's Bolt' (multiplicação);\n- 'ThunderStorm' (divisão)")
		u.aguarde(3000)
		escreva("\n\n Hades:\n- 'Life Ties' (soma);\n- 'Tártaro Gates' (subtração);\n- 'Ressurection' (multiplicação);\n- 'Soul Corruption' (divisão).")
		u.aguarde(3000)
		escreva("\n\n Poseidon:\n- 'Water Cleanse' (soma);\n- 'Drowning' (subtração);\n- 'Atlantida Emerging' (multiplicação);\n- 'Wave Decimation' (divisão).")
		u.aguarde(3000)
		escreva("\n\n Ares:\n- 'Vengeance' (soma);\n- 'Ares's Blade' (subtração);\n- 'Bloodied Berserk' (multiplicação);\n- 'Eternal War' (divisão).")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nCondições de Vitória:\n- O objetivo é atingir ou se aproximar de 100 pontos após as 8 rodadas.\n- O jogador com a pontuação mais próxima de 100 no final é o vencedor.")
		escreva("\n\nPressione qualquer tecla para continuar: ")
		u.aguarde(250)
		leia(pass)
		limpa()
		
		escreva("\nTutorial do Jogo: Batalha de Poderes\n\nDicas:\n- Escolha seu Deus de acordo com o estilo de jogo que prefere.\n- Planeje o uso dos poderes estrategicamente para maximizar sua pontuação ou prejudicar a do seu oponente.\n- Lembre-se que cada poder só pode ser usado duas vezes, então escolha sabiamente quando utilizá-los.")
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
	funcao creditos(){
		escreva("DIGMA\n\n")
		u.aguarde(400)
		escreva("Gabriel Ribeiro Lourenço - Programação principal\n")
		u.aguarde(500)
		escreva("Débora Sanches Rudy - Programação e Animações\n")
		u.aguarde(500)
		escreva("Amós Pacheco Ferreira - Programação\n")
		u.aguarde(500)
		escreva("Maria Eduarda Mello Mendes - Programação e Arte\n")
		u.aguarde(500)
		escreva("Isabela Silva Moreira - Programação e Efeitos sonoros\n\n")
		u.aguarde(900)
		escreva("Pressione enter para continuar: ")
		leia(pass)
	}
	funcao historia(){
		escreva("No Monte Olimpo, quatro deuses — Ares, Zeus, Hades e Poseidon — entraram em conflito por uma cidade lendária chamada Eterna,\nque prometia imortalizar o nome de quem a conquistasse.\n")
		u.aguarde(1600)
		escreva("Ares queria a cidade como símbolo de seu poder bélico, \n")
		u.aguarde(950)
		escreva("Zeus a via como uma extensão de seu domínio celestial, \n")
		u.aguarde(950)
		escreva("Hades desejava expandir sua influência sobre os mortos, \n")
		u.aguarde(950)
		escreva("e Poseidon buscava controlar os mares.\n")
		u.aguarde(950)
		escreva("Com o destino de Eterna em jogo, um antigo ritual selecionou dois deuses para lutar diretamente pelo controle, \n")
		u.aguarde(1400)
		escreva("A batalha no Monte Olimpo determinaria não apenas a posse da cidade, mas também a supremacia divina eterna.\n\n")
		u.aguarde(1700)
		escreva("Pressione enter para continuar: ")
		leia(pass)
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
 * @POSICAO-CURSOR = 24759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */