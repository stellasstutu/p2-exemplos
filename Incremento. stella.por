programa
{
	
	funcao inicio()
	{//pratica teste logico no fim - looping
		real limiteInferior, limiteSuperior, incremento
		logico eIncrementoIncorreto
		logico incrementoNegativoOuNuloMasLimiteInferiorMenorLimiteSuperior
		logico incrementoPositivoOuNuloMasLimiteInferiorMaiorLimiteSuperior
		logico incrementoNaoNuloMasLimiteInferiorIgualLimiteSuperior
		
		escreva ("Entre com o limite inferior\n")
		leia(limiteInferior)

		escreva ("Entre com o limite Superior\n")
		leia(limiteSuperior)

		faca
		{
			escreva ("Entre com o limite incremento para[",limiteInferior,",", limiteSuperior,"]\n")
			leia(incremento)

			incrementoNegativoOuNuloMasLimiteInferiorMenorLimiteSuperior = (( limiteInferior < limiteSuperior) e incremento <= 0)
			

			incrementoPositivoOuNuloMasLimiteInferiorMaiorLimiteSuperior = (( limiteInferior > limiteSuperior) e incremento >= 0)
			

			incrementoNaoNuloMasLimiteInferiorIgualLimiteSuperior = (( limiteInferior > limiteSuperior) e incremento != 0)

			
			eIncrementoIncorreto = incrementoNegativoOuNuloMasLimiteInferiorMenorLimiteSuperior ou incrementoPositivoOuNuloMasLimiteInferiorMaiorLimiteSuperior ou incrementoNaoNuloMasLimiteInferiorIgualLimiteSuperior
			
		}enquanto(eIncrementoIncorreto)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1239; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */