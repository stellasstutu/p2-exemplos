programa
{
	inclua biblioteca Matematica --> Mt
	
	funcao inicio()
	{
		const inteiro QUANTIDADE_CONSUMOS = 4
		const inteiro CONSUMO_NULO = 0
		const inteiro CASAS_DECIMAIS = 3
		
		real consumos[QUANTIDADE_CONSUMOS]
		
		// Questão I - Leitura dos consumos usando estrutura de repetição
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS; i++)
		{
			escreva("Entre com o ", (i + 1), "º consumo de energia elétrica em kWh\n")
			leia(consumos[i])
			
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
		
		// Questão II - Exibir ordem desordenada com comparações
		escreva("\nConsumos de energia desordenados: ")
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
		
		// Questão III - Ordenação decrescente usando Bubble Sort
		para(inteiro i = 0; i < QUANTIDADE_CONSUMOS - 1; i++)
		{
			para(inteiro j = 0; j < QUANTIDADE_CONSUMOS - i - 1; j++)
			{
				se(consumos[j] < consumos[j + 1])
				{
					real temp = consumos[j]
					consumos[j] = consumos[j + 1]
					consumos[j + 1] = temp
				}
			}
		}
		
		// Exibir consumos ordenados
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
		
		// Questão IV - Cálculo da mediana e média geométrica dos valores centrais
		real somaDaMediana = consumos[1] + consumos[2]
		real mediana = somaDaMediana / 2.0
		
		// Verificar se algum valor central é nulo
		se(consumos[1] == 0 ou consumos[2] == 0)
		{
			escreva("Um dos valores centrais é nulo.\n")
		}
		
		real produtoDaMedia = consumos[1] * mediana * consumos[2]
		real mediaGeometrica = Mt.raiz(produtoDaMedia, 3.0)
		
		escreva("A mediana dos consumos centrais é: ", Mt.arredondar(mediana, CASAS_DECIMAIS), "\n")
		escreva("A média geométrica dos consumos centrais é: ", Mt.arredondar(mediaGeometrica, CASAS_DECIMAIS), "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 172; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */