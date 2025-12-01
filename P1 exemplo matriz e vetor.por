programa
{
	inclua biblioteca Matematica --> Mt
	
	funcao inicio()
	{
		escreva("╔════════════════════════════════════════════╗\n")
		escreva("║  ESCOLHA O MODO DE PROCESSAMENTO         ║\n")
		escreva("╚════════════════════════════════════════════╝\n")
		escreva("1 - Processar UMA residência (com VETOR)\n")
		escreva("2 - Processar VÁRIAS residências (com MATRIZ)\n")
		escreva("Escolha uma opção: ")
		
		inteiro opcao
		leia(opcao)
		
		se(opcao == 1)
		{
			processarComVetor()
		}
		senao se(opcao == 2)
		{
			processarComMatriz()
		}
		senao
		{
			escreva("Opção inválida!\n")
		}
	}
	
	// ═══════════════════════════════════════════════════════════
	// VERSÃO COM VETOR - Mantém a lógica EXATA do código original
	// ═══════════════════════════════════════════════════════════
	funcao processarComVetor()
	{
		const inteiro QUANTIDADE_CONSUMOS = 4
		const inteiro CONSUMO_NULO = 0
		const inteiro CASAS_DECIMAIS = 3
		
		// VETOR: substitui as 4 variáveis individuais
		// consumoDeEnergiaIEmkwh   -> consumos[0]
		// consumoDeEnergiaIIEmkwh  -> consumos[1]
		// consumoDeEnergiaIIIEmkwh -> consumos[2]
		// consumoDeEnergiaIVEmkwh  -> consumos[3]
		real consumos[QUANTIDADE_CONSUMOS]
		
		escreva("\n=== PROCESSAMENTO COM VETOR (1 RESIDÊNCIA) ===\n\n")
		
		// ─────────────────────────────────────────────────────────
		// Questão I - LEITURA COM VETOR
		// ─────────────────────────────────────────────────────────
		// ANTES: 4 blocos de código repetidos (leia, se, senao se)
		// DEPOIS: 1 laço que repete 4 vezes
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
		{
			escreva("Entre com o ", (i + 1), "º consumo de energia elétrica em kWh\n")
			leia(consumos[i])  // VETOR: acessa posição i
			
			se(consumos[i] == CONSUMO_NULO)
			{
				escreva("A residência não possui consumo\n")
			}
			senao se(consumos[i] < CONSUMO_NULO)
			{
				escreva("O valor do consumo está negativo, insira os valores novamente.\n")
				retorne
			}
		}
		
		// ─────────────────────────────────────────────────────────
		// Questão II - COMPARAÇÕES COM VETOR
		// ─────────────────────────────────────────────────────────
		// ANTES: 3 variáveis comp_1_2, comp_2_3, comp_3_4
		// DEPOIS: calculado dinamicamente no laço
		escreva("\nConsumos de energia desordenados: ")
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
		{
			escreva(consumos[i])
			
			// Comparar com o próximo elemento (se existir)
			se(i < QUANTIDADE_CONSUMOS - 1)
			{
				// VETOR: compara consumos[i] com consumos[i+1]
				se(consumos[i] >= consumos[i + 1])
				{
					escreva(" > ")
				}
				senao se(consumos[i] <= consumos[i + 1])
				{
					escreva(" < ")
				}
				senao
				{
					escreva(" == ")
				}
			}
		}
		escreva("\n\n")
		
		// ─────────────────────────────────────────────────────────
		// Questão III - ORDENAÇÃO COM VETOR (Bubble Sort)
		// ─────────────────────────────────────────────────────────
		// ANTES: Múltiplas comparações e trocas manuais (c1MenorQueC2, etc)
		// DEPOIS: Algoritmo Bubble Sort
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS - 1; i++)
		{
			para(inteiro j = 0; j < QUANTIDADE_CONSUMOS - i - 1; j++)
			{
				// Se elemento atual < próximo, troca (ordem decrescente)
				se(consumos[j] < consumos[j + 1])
				{
					// VETOR: troca de valores (swap)
					real temp = consumos[j]
					consumos[j] = consumos[j + 1]
					consumos[j + 1] = temp
				}
			}
		}
		
		// Após ordenação: consumos[0] = maior, consumos[3] = menor
		real maiorConsumo = consumos[0]
		real menorConsumo = consumos[3]
		
		// Exibir ordenado
		escreva("Consumos de energia ordenados decrescentemente: ")
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
		{
			escreva(consumos[i])
			
			se(i < QUANTIDADE_CONSUMOS - 1)
			{
				se(consumos[i] > consumos[i + 1])
				{
					escreva(" > ")
				}
				senao se(consumos[i] < consumos[i + 1])
				{
					escreva(" < ")
				}
				senao
				{
					escreva(" == ")
				}
			}
		}
		escreva("\n\n")
		
		// ─────────────────────────────────────────────────────────
		// Questão IV - MEDIANA E MÉDIA GEOMÉTRICA COM VETOR
		// ─────────────────────────────────────────────────────────
		// VETOR: consumos[1] e consumos[2] são os valores centrais após ordenação
		real somaDaMediana = consumos[1] + consumos[2]
		logico eDaMediana = consumos[1] == 0 ou consumos[2] == 0
		
		se(eDaMediana)
		{
			escreva("Um dos valores é nulo\n")
		}
		
		real mediana = somaDaMediana / 2.0
		real produtoDaMedia = consumos[1] * mediana * consumos[2]
		real mediaGeometrica = Mt.raiz(produtoDaMedia, 3.0)
		
		escreva("A mediana dos consumos centrais é: ", Mt.arredondar(mediana, CASAS_DECIMAIS), "\n")
		escreva("A média geométrica dos consumos centrais é: ", Mt.arredondar(mediaGeometrica, CASAS_DECIMAIS), "\n\n")
	}
	
	// ═══════════════════════════════════════════════════════════
	// VERSÃO COM MATRIZ - Processa MÚLTIPLAS residências
	// ═══════════════════════════════════════════════════════════
	funcao processarComMatriz()
	{
		const inteiro QUANTIDADE_RESIDENCIAS = 2
		const inteiro QUANTIDADE_CONSUMOS = 4
		const inteiro CONSUMO_NULO = 0
		const inteiro CASAS_DECIMAIS = 3
		
		// MATRIZ: [residências][consumos]
		// Cada LINHA = uma residência completa
		// Cada COLUNA = um período/mês específico
		real consumos[QUANTIDADE_RESIDENCIAS][QUANTIDADE_CONSUMOS]
		
		escreva("\n=== PROCESSAMENTO COM MATRIZ (", QUANTIDADE_RESIDENCIAS, " RESIDÊNCIAS) ===\n")
		
		// ─────────────────────────────────────────────────────────
		// LEITURA COM MATRIZ - percorre linhas e colunas
		// ─────────────────────────────────────────────────────────
		para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
		{
			escreva("\n--- RESIDÊNCIA ", (residencia + 1), " ---\n")
			
			para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
			{
				escreva("Entre com o ", (periodo + 1), "º consumo de energia elétrica em kWh\n")
				// MATRIZ: acessa [linha=residência][coluna=período]
				leia(consumos[residencia][periodo])
				
				se(consumos[residencia][periodo] == CONSUMO_NULO)
				{
					escreva("A residência não possui consumo\n")
				}
				senao se(consumos[residencia][periodo] < CONSUMO_NULO)
				{
					escreva("O valor do consumo está negativo, insira os valores novamente.\n")
					retorne
				}
			}
		}
		
		// ─────────────────────────────────────────────────────────
		// PROCESSAR CADA RESIDÊNCIA (cada linha da matriz)
		// ─────────────────────────────────────────────────────────
		para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
		{
			escreva("\n╔════════════════════════════════════════╗\n")
			escreva("║   ANÁLISE DA RESIDÊNCIA ", (residencia + 1), "           ║\n")
			escreva("╚════════════════════════════════════════╝\n")
			
			// MATRIZ: extrair UMA LINHA para processar
			// Cria um vetor temporário com os dados desta residência
			real consumosResidencia[QUANTIDADE_CONSUMOS]
			para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
			{
				// MATRIZ -> VETOR: copia linha da matriz para vetor
				consumosResidencia[i] = consumos[residencia][i]
			}
			
			// Questão II - Comparações (igual ao vetor)
			escreva("\nConsumos desordenados: ")
			para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
			{
				escreva(consumosResidencia[i])
				
				se(i < QUANTIDADE_CONSUMOS - 1)
				{
					se(consumosResidencia[i] >= consumosResidencia[i + 1])
					{
						escreva(" > ")
					}
					senao se(consumosResidencia[i] <= consumosResidencia[i + 1])
					{
						escreva(" < ")
					}
					senao
					{
						escreva(" == ")
					}
				}
			}
			escreva("\n\n")
			
			// Questão III - Ordenação (igual ao vetor)
			para(inteiro i = 0; i < QUANTIDADE_CONSUMOS - 1; i++)
			{
				para(inteiro j = 0; j < QUANTIDADE_CONSUMOS - i - 1; j++)
				{
					se(consumosResidencia[j] < consumosResidencia[j + 1])
					{
						real temp = consumosResidencia[j]
						consumosResidencia[j] = consumosResidencia[j + 1]
						consumosResidencia[j + 1] = temp
					}
				}
			}
			
			escreva("Consumos ordenados decrescentemente: ")
			para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
			{
				escreva(consumosResidencia[i])
				
				se(i < QUANTIDADE_CONSUMOS - 1)
				{
					se(consumosResidencia[i] > consumosResidencia[i + 1])
					{
						escreva(" > ")
					}
					senao se(consumosResidencia[i] < consumosResidencia[i + 1])
					{
						escreva(" < ")
					}
					senao
					{
						escreva(" == ")
					}
				}
			}
			escreva("\n\n")
			
			// Questão IV - Mediana e Média Geométrica (igual ao vetor)
			real somaDaMediana = consumosResidencia[1] + consumosResidencia[2]
			logico eDaMediana = consumosResidencia[1] == 0 ou consumosResidencia[2] == 0
			
			se(eDaMediana)
			{
				escreva("Um dos valores é nulo\n")
			}
			
			real mediana = somaDaMediana / 2.0
			real produtoDaMedia = consumosResidencia[1] * mediana * consumosResidencia[2]
			real mediaGeometrica = Mt.raiz(produtoDaMedia, 3.0)
			
			escreva("A mediana dos consumos centrais é: ", Mt.arredondar(mediana, CASAS_DECIMAIS), "\n")
			escreva("A média geométrica dos consumos centrais é: ", Mt.arredondar(mediaGeometrica, CASAS_DECIMAIS), "\n")
		}
		
		// ─────────────────────────────────────────────────────────
		// BÔNUS: Comparação entre residências (só possível com MATRIZ)
		// ─────────────────────────────────────────────────────────
		escreva("\n╔════════════════════════════════════════╗\n")
		escreva("║   COMPARAÇÃO ENTRE RESIDÊNCIAS        ║\n")
		escreva("╚════════════════════════════════════════╝\n\n")
		
		// Percorrer COLUNAS: comparar mesmo período entre casas
		para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
		{
			escreva("Período ", (periodo + 1), ": ")
			
			para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
			{
				// MATRIZ: acessa [diferentes linhas][mesma coluna]
				escreva("Casa ", (residencia + 1), "=", consumos[residencia][periodo], " kWh")
				
				se(residencia < QUANTIDADE_RESIDENCIAS - 1)
				{
					escreva(" | ")
				}
			}
			escreva("\n")
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {residencia, 213, 15, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */