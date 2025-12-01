programa
{
	inclua biblioteca Matematica --> Mt
	
	funcao inicio()
	{
		// MATRIZ: estrutura bidimensional [linhas][colunas]
		// Cada LINHA representa uma residência diferente
		// Cada COLUNA representa um mês/período de consumo
		const inteiro QUANTIDADE_RESIDENCIAS = 3
		const inteiro QUANTIDADE_CONSUMOS = 4
		const inteiro CONSUMO_NULO = 0
		const inteiro CASAS_DECIMAIS = 3
		
		// MATRIZ: declaração - [3 residências][4 consumos cada]
		// Exemplo de estrutura:
		//           Mês1  Mês2  Mês3  Mês4
		// Casa 1:  [100] [150] [120] [180]
		// Casa 2:  [200] [180] [220] [190]
		// Casa 3:  [300] [280] [310] [290]
		real consumos[QUANTIDADE_RESIDENCIAS][QUANTIDADE_CONSUMOS]
		
		// Leitura dos consumos para cada residência
		// MATRIZ: percorre linhas (residências) e colunas (consumos)
		para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
		{
			escreva("\n=== RESIDÊNCIA ", (residencia + 1), " ===\n")
			
			para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
			{
				escreva("Entre com o ", (periodo + 1), "º consumo de energia em kWh: ")
				// MATRIZ: acessa posição [linha][coluna]
				leia(consumos[residencia][periodo])
				
				// MATRIZ: valida valor na posição [residencia][periodo]
				se(consumos[residencia][periodo] == CONSUMO_NULO)
				{
					escreva("→ A residência não possui consumo neste período\n")
				}
				senao se(consumos[residencia][periodo] < CONSUMO_NULO)
				{
					escreva("→ Valor negativo! Insira novamente.\n")
					retorne
				}
			}
		}
		
		// Processar cada residência individualmente
		para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
		{
			escreva("\n╔════════════════════════════════════════════╗\n")
			escreva("║    ANÁLISE DA RESIDÊNCIA ", (residencia + 1), "              ║\n")
			escreva("╚════════════════════════════════════════════╝\n")
			
			// MATRIZ: extrai uma linha completa (todos os consumos de uma residência)
			// Criar vetor temporário com os consumos desta residência
			real consumosResidencia[QUANTIDADE_CONSUMOS]
			para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
			{
				// MATRIZ: copia valores da linha [residencia] para o vetor
				consumosResidencia[i] = consumos[residencia][i]
			}
			
			// Exibir consumos desordenados
			escreva("\n→ Consumos desordenados: ")
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
			escreva("\n")
			
			// Ordenação decrescente usando Bubble Sort
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
			
			// Exibir consumos ordenados
			escreva("→ Consumos ordenados (decrescente): ")
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
			escreva("\n")
			
			// Cálculos estatísticos dos valores centrais
			real somaDaMediana = consumosResidencia[1] + consumosResidencia[2]
			real mediana = somaDaMediana / 2.0
			
			se(consumosResidencia[1] == 0 ou consumosResidencia[2] == 0)
			{
				escreva("→ AVISO: Um dos valores centrais é nulo\n")
			}
			
			real produtoDaMedia = consumosResidencia[1] * mediana * consumosResidencia[2]
			real mediaGeometrica = Mt.raiz(produtoDaMedia, 3.0)
			
			escreva("→ Mediana dos consumos centrais: ", Mt.arredondar(mediana, CASAS_DECIMAIS), " kWh\n")
			escreva("→ Média geométrica dos consumos centrais: ", Mt.arredondar(mediaGeometrica, CASAS_DECIMAIS), " kWh\n")
		}
		
		// BÔNUS: Análise comparativa entre residências usando a MATRIZ
		escreva("\n╔════════════════════════════════════════════╗\n")
		escreva("║    COMPARAÇÃO ENTRE RESIDÊNCIAS           ║\n")
		escreva("╚════════════════════════════════════════════╝\n")
		
		para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
		{
			escreva("\n→ Período ", (periodo + 1), ": ")
			
			// MATRIZ: percorre a COLUNA (mesmo período de todas as residências)
			para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
			{
				escreva("Casa ", (residencia + 1), "=", consumos[residencia][periodo], " kWh")
				se(residencia < QUANTIDADE_RESIDENCIAS - 1)
				{
					escreva(" | ")
				}
			}
		}
		
		// Calcular consumo total por residência
		escreva("\n\n→ Consumo TOTAL por residência:\n")
		para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
		{
			real totalResidencia = 0.0
			
			// MATRIZ: soma todos os valores de uma LINHA
			para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
			{
				totalResidencia = totalResidencia + consumos[residencia][periodo]
			}
			
			escreva("   Casa ", (residencia + 1), ": ", Mt.arredondar(totalResidencia, CASAS_DECIMAIS), " kWh\n")
		}
		
		// Calcular consumo total por período
		escreva("\n→ Consumo TOTAL por período:\n")
		para(inteiro periodo = 0; periodo < QUANTIDADE_CONSUMOS; periodo++)
		{
			real totalPeriodo = 0.0
			
			// MATRIZ: soma todos os valores de uma COLUNA
			para(inteiro residencia = 0; residencia < QUANTIDADE_RESIDENCIAS; residencia++)
			{
				totalPeriodo = totalPeriodo + consumos[residencia][periodo]
			}
			
			escreva("   Período ", (periodo + 1), ": ", Mt.arredondar(totalPeriodo, CASAS_DECIMAIS), " kWh\n")
		}
		
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6061; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */