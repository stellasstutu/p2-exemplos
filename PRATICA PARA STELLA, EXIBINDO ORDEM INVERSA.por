programa
{
	
	funcao inicio()
	{ // EXIBINDO DE FORMA INVERSA
		const inteiro NUMERO_DE_ELEMENTOS = 3
		real vetor[NUMERO_DE_ELEMENTOS]
		inteiro indice
		

		escreva("Entre com os ",NUMERO_DE_ELEMENTOS," elementos do vetor\n")
		
		para(indice = 0; indice < NUMERO_DE_ELEMENTOS; ++indice)
		{
			leia(vetor[indice])
		}
		escreva("Os",NUMERO_DE_ELEMENTOS," elementos do vetor\n")

		
		para(indice = 0; indice < NUMERO_DE_ELEMENTOS; ++indice)
		{
			escreva(vetor[indice]," ")
		}
		// indice = 3,2,1,0
		escreva("Os",NUMERO_DE_ELEMENTOS," elementos do vetor na ordem inversa:\n")
		para(indice = NUMERO_DE_ELEMENTOS - 1; indice >= 0; --indice)
		{
			escreva(vetor[indice], " ")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 690; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */