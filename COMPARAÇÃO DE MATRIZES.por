programa
{// revisão prova segunda.
	//comparação de matrizes
}
	
	funcao inicio()
	{//entrada da matriz
		const inteiro MAX =100 //portugol so aceita ate 100 quadradinhos
		inteiro matriz[MAX][MAX]
		inteiro indice
		logico eErroDaMatriz

		escreva("Escreva o indice da matriz quadrada\n")
		laia(indice)
		para(inteiro i= 0; i<indice;i++) //linha
		{
			para( inteiro j=0: j< indice; j++) //coluna
			{
				faca //simular retorno antecipado
				escreva("Entre com a matriz\n")
				leia(matriz[i][j])
				eErroDaMatriz = matriz[i][j] <= 0
				se(eErroDaMatriz)
				{
					escreva("Erro\n")
				}
			}enquanto(eErroDaMatriz)
		
		}
		para(inteiro k) //4 laços de repetição para compararação matriz, para vetor são 2
		{
			para(inteiro l)
			{
				para(inteiro m)
				{
					para(inteiro n)
					{
						se(matriz[m][n] < matriz[k][l])
						{
							inteiro copia = matriz[m][n]
							matriz[m][n] = matriz[k][l]
							matriz[k][l] = copia
						}
					}
				}
				
			}
		}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 697; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */