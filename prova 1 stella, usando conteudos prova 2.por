programa
{	inclua biblioteca Matematica --> Mt
	// respondendo com matrizes e vetores
	//faca enquanto
	//para -> laços de repetição
	
	funcao inicio()
	{
	//Variáveis
	real consumoDeEnergiaIEmkwh,consumoDeEnergiaIIEmkwh
	real consumoDeEnergiaIIIEmkwh,consumoDeEnergiaIVEmkwh
	const inteiro CONSUMO_NULO = 0

	para( real NUMERO_CONSUMOS = 1.0)

	//Questão I
	//Pedido de entrada de valores de consumo
	
	/*escreva("Entre com o 1º consumo de energia elétrica em kWh\n")
	leia(consumoDeEnergiaIEmkwh)
	
	se(consumoDeEnergiaIEmkwh == CONSUMO_NULO)
	{
		escreva("A residência não possui consumo\n")
	
	}
	senao se (consumoDeEnergiaIEmkwh < CONSUMO_NULO)
	{
		escreva("O valor do consumo está negativo, insira os valores novamente.\n")
		retorne
	}
		
	escreva("Entre com o 2º consumo de energia elétrica em kWh\n")
	leia(consumoDeEnergiaIIEmkwh)

	se(consumoDeEnergiaIIEmkwh == CONSUMO_NULO)
	{
		escreva("A residência não possui consumo\n")
	
	}
	senao se (consumoDeEnergiaIIEmkwh < CONSUMO_NULO)
	{
		escreva("O valor do consumo está negativo, insira os valores novamente.\n")
		retorne
	}

	escreva("Entre com o 3º consumo de energia elétrica em kWh\n")
	leia(consumoDeEnergiaIIIEmkwh)

	se(consumoDeEnergiaIIIEmkwh == CONSUMO_NULO)
	{
		escreva("A residência não possui consumo\n")
	
	}
	senao se (consumoDeEnergiaIIIEmkwh < CONSUMO_NULO)
	{
		escreva("O valor do consumo está negativo, insira os valores novamente.\n")
		retorne
	}
	
	escreva("Entre com o 4º consumo de energia elétrica em kWh\n")
	leia(consumoDeEnergiaIVEmkwh)

	se(consumoDeEnergiaIVEmkwh == CONSUMO_NULO)
	{
		escreva("A residência não possui consumo\n\n")
	
	}
	senao se (consumoDeEnergiaIVEmkwh < CONSUMO_NULO)
	{
		escreva("O valor do consumo está negativo, insira os valores novamente.\n\n")
		retorne
	}*/

	
	//Questão II
	//comparaçôes entre os consumos
	cadeia comp_1_2, comp_2_3, comp_3_4

	// comparação 1 e 2
	se(consumoDeEnergiaIEmkwh >= consumoDeEnergiaIIEmkwh)
	{
		comp_1_2 = " > "
	}
	senao se (consumoDeEnergiaIEmkwh <= consumoDeEnergiaIIEmkwh)
	{
		comp_1_2 = " < "
	}
	senao
	{
		comp_1_2 = " == "
	}

	// comparação 2 e 3
	se(consumoDeEnergiaIIEmkwh >= consumoDeEnergiaIIIEmkwh)
	{
		comp_2_3 = " > "
	}
	senao se (consumoDeEnergiaIIEmkwh <= consumoDeEnergiaIIIEmkwh)
	{
		comp_2_3 = " < "
	}
	senao
	{
		comp_2_3 = " == "
	}
	
	// comparação 3 e 4
	se( consumoDeEnergiaIIIEmkwh >= consumoDeEnergiaIVEmkwh)
	{
		comp_3_4 = " > "
	}
	senao se (consumoDeEnergiaIIIEmkwh <= consumoDeEnergiaIVEmkwh)
	{
		comp_3_4 = " < "
	}
	senao
	{
		comp_3_4 = " == "
	}

	//exibir ordem desordenada
	escreva("\nConsumos de energia desordenados: ",consumoDeEnergiaIEmkwh, comp_1_2, consumoDeEnergiaIIEmkwh, comp_2_3, consumoDeEnergiaIIIEmkwh, comp_3_4, consumoDeEnergiaIVEmkwh,"\n\n")

	//Questão III
	//Ordenando decrescente os valores de consumo
	real menorConsumo, maiorConsumo
	logico c1MenorQueC2 = consumoDeEnergiaIEmkwh <= consumoDeEnergiaIIEmkwh
	se(c1MenorQueC2)
	{
		maiorConsumo = consumoDeEnergiaIEmkwh
		consumoDeEnergiaIEmkwh = consumoDeEnergiaIIEmkwh
		consumoDeEnergiaIIEmkwh = maiorConsumo
	}

	logico c2MenorQueC3 = consumoDeEnergiaIIEmkwh <= consumoDeEnergiaIIIEmkwh
	se(c2MenorQueC3)
	{
		maiorConsumo = consumoDeEnergiaIIEmkwh
		consumoDeEnergiaIIEmkwh = consumoDeEnergiaIIIEmkwh
		consumoDeEnergiaIIIEmkwh = maiorConsumo
	}

	logico c3MenorQueC4 = consumoDeEnergiaIIIEmkwh <= consumoDeEnergiaIVEmkwh
	se(c3MenorQueC4)
	{
		maiorConsumo = consumoDeEnergiaIIIEmkwh
		consumoDeEnergiaIIIEmkwh = consumoDeEnergiaIVEmkwh
		consumoDeEnergiaIVEmkwh = maiorConsumo
	}
	maiorConsumo = consumoDeEnergiaIEmkwh
	menorConsumo = consumoDeEnergiaIVEmkwh

	//comparação para sinais
	cadeia comp2_1_2, comp2_2_3, comp2_3_4

	// comparação 1 e 2
	se(consumoDeEnergiaIEmkwh > consumoDeEnergiaIIEmkwh)
	{
		comp2_1_2 = " > "
	}
	senao se (consumoDeEnergiaIEmkwh < consumoDeEnergiaIIEmkwh)
	{
		comp2_1_2 = " < "
	}
	senao
	{
		comp2_1_2 = " == "
	}

	// comparação 2 e 3
	se(consumoDeEnergiaIIEmkwh > consumoDeEnergiaIIIEmkwh)
	{
		comp2_2_3 = " > "
	}
	senao se (consumoDeEnergiaIIEmkwh < consumoDeEnergiaIIIEmkwh)
	{
		comp2_2_3 = " < "
	}
	senao
	{
		comp2_2_3 = " == "
	}
	
	// comparação 3 e 4
	se( consumoDeEnergiaIIIEmkwh > consumoDeEnergiaIVEmkwh)
	{
		comp2_3_4 = " > "
	}
	senao se (consumoDeEnergiaIIIEmkwh < consumoDeEnergiaIVEmkwh)
	{
		comp2_3_4 = " < "
	}
	senao
	{
		comp2_3_4 = " == "
	}
	escreva("\nConsumos de energia ordenados decrescentemente: ",maiorConsumo, comp2_1_2, consumoDeEnergiaIIEmkwh, comp2_2_3, consumoDeEnergiaIIIEmkwh, comp2_3_4, menorConsumo,"\n\n")

	//Questão IV - calculo mediana e média geométrica dos consumos
	// pra organizar os calculos, vai de parte por parte
	real somaDaMediana = consumoDeEnergiaIIEmkwh + consumoDeEnergiaIIIEmkwh
	logico eDaMediana = consumoDeEnergiaIIEmkwh == 0 ou consumoDeEnergiaIIIEmkwh == 0
	logico valorNaoNulo = consumoDeEnergiaIIEmkwh > 0 ou consumoDeEnergiaIIIEmkwh > 0
	se(eDaMediana)
	{
		escreva("Um dos valores é nulo, então o valor da mediana é: ",valorNaoNulo,"\n")
	}
	real mediana = somaDaMediana / 2.0
	real produtoDaMedia = consumoDeEnergiaIIEmkwh * mediana * consumoDeEnergiaIIIEmkwh
	real mediaGeometrica = Mt.raiz(produtoDaMedia, 3.0)
	const inteiro CASAS_DECIMAIS = 3 // O VALOR QUE FICA EM CIMA DA RAIZ DEVE SER SEMPRE INTEIRO

	escreva("A mediana dos consumos centrais é: ", Mt.arredondar(mediana,CASAS_DECIMAIS),"\n")
	escreva("A média geométrica dos consumos centrais é: ",Mt.arredondar(mediaGeometrica,CASAS_DECIMAIS))
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */