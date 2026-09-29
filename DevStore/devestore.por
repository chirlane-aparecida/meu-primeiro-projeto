programa
{
	funcao exibirCabecalho()
	{
		escreva("====================================\n")
		escreva("       DEVSTORE - CAIXA E VENDAS\n")
		escreva("====================================\n")
	}

	funcao real calcularSubtotal(real preco, inteiro quantidade)
	{
		retorne preco * quantidade
	}

	funcao real calcularDesconto(real subtotal, inteiro tipoCliente)
	{
		real desconto

		se (tipoCliente == 1)
		{
			desconto = subtotal * 0.00
		}
		senao se (tipoCliente == 2)
		{
			desconto = subtotal * 0.10
		}
		senao
		{
			desconto = subtotal * 0.15
		}

		retorne desconto
	}

	funcao real calcularImposto(real valorComDesconto)
	{
		retorne valorComDesconto * 0.05
	}

	funcao exibirComprovante(real totalBruto, real totalDesconto, real totalImposto, real valorFinal)
	{
		escreva("\n====================================\n")
		escreva("          COMPROVANTE DEVSTORE\n")
		escreva("====================================\n")
		escreva("Total bruto: R$ ", totalBruto, "\n")
		escreva("Desconto:    R$ ", totalDesconto, "\n")
		escreva("Imposto:     R$ ", totalImposto, "\n")
		escreva("------------------------------------\n")
		escreva("VALOR FINAL: R$ ", valorFinal, "\n")
		escreva("====================================\n")
	}

	funcao inicio()
	{
		real preco
		real subtotal
		real desconto
		real imposto
		real totalBruto = 0
		real totalDesconto = 0
		real totalImposto = 0
		real valorFinal

		inteiro quantidade
		inteiro tipoCliente
		inteiro i

		exibirCabecalho()

		escreva("\nTIPO DE CLIENTE\n")
		escreva("1 - Cliente Comum\n")
		escreva("2 - Cliente VIP\n")
		escreva("3 - Funcionario\n")
		escreva("Escolha: ")
		leia(tipoCliente)

		para (i = 1; i <= 3; i++)
		{
			escreva("\n--- PRODUTO ", i, " ---\n")

			escreva("Quantidade: ")
			leia(quantidade)

			escreva("Preco unitario: R$ ")
			leia(preco)

			subtotal = calcularSubtotal(preco, quantidade)

			desconto = calcularDesconto(subtotal, tipoCliente)

			totalBruto = totalBruto + subtotal
			totalDesconto = totalDesconto + desconto
		}

		valorFinal = totalBruto - totalDesconto

		imposto = calcularImposto(valorFinal)

		totalImposto = imposto

		valorFinal = valorFinal + totalImposto

		exibirComprovante(totalBruto, totalDesconto, totalImposto, valorFinal)
	}
}