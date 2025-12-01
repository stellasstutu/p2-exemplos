programa
{
	
	funcao inicio()
	{//pratica de teste logico no fim
	// faça
	// fornecer a quantidade de resistores
		inteiro numeroDeResistores, contagemDeResistoresFornecidos = 1
		real resistenciaEmOhm, resistenciaEquivalenteEmOhm
		logico eNumeroDeResistoresIncorreto
		logico eResistenciaIncorreta
		real somatorioDoInversoDasResistencias = 0.0
		
	

		faca
		{
			escreva("Forneça o número de resistores\n")
			leia(numeroDeResistores)
			
			eNumeroDeResistoresIncorreto = numeroDeResistores <= 0
			
			se (eNumeroDeResistoresIncorreto)
			{
				escreva("O número de resistores deve ser sempre positivo\n\n")
			}
		}
		enquanto(eNumeroDeResistoresIncorreto)
		// entrada dos nº resistores
		// faca e enquanto
		faca 
		{
			faca
			{
			escreva("Forneça o ", contagemDeResistoresFornecidos, "º resistência \n" )
			leia(resistenciaEmOhm)

			eResistenciaIncorreta = resistenciaEmOhm <= 0
			

			se (eResistenciaIncorreta)
			{
				escreva("A resistencia deve ser sempre um valor positivo\n\n")
			}
			}enquanto (eResistenciaIncorreta)

			somatorioDoInversoDasResistencias+= 1 / resistenciaEmOhm

			contagemDeResistoresFornecidos++
		}
		enquanto (contagemDeResistoresFornecidos <= numeroDeResistores )

		resistenciaEquivalenteEmOhm = 1 /somatorioDoInversoDasResistencias

		escreva("A resistência equivalente = ",resistenciaEquivalenteEmOhm, " Ohm\n")
	}	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1362; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */