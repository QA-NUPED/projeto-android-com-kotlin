package br.com.alura.orgs

import br.com.alura.orgs.model.Produto
import br.com.alura.orgs.model.Usuario
import org.amshove.kluent.shouldBeFalse
import org.amshove.kluent.shouldBeTrue
import org.junit.Assert
import org.junit.Test
import java.math.BigDecimal

class ProdutoTests {

    @Test
    fun `deve retornar verdadeiro quando o valor for valido`() {
        //Arrange - Arrumar
        val produtoValido = Produto(
            nome = "Banana",
            descricao = "Banana prata",
            valor = BigDecimal("6.99")
        )

        //Act - Agir
        val valorEhValido = produtoValido.valorEhValido

        //Assert - Afirme
        valorEhValido.shouldBeTrue()
    }

    @Test
    fun `deve retornar falso quando o valor for maior que cem`() {
        //Arrange
        val produtoInvalido = Produto(
            nome = "Carambola",
            descricao = "Amarela",
            valor = BigDecimal("105.99")
        )

        //Act
        val valorEhValido = produtoInvalido.valorEhValido

        //Assert
        valorEhValido.shouldBeFalse()
    }

    @Test
    fun `deve retornar falso quando o valor for menor ou igual a zero`() {
        //Arrange
        val produtoComValorIgualAZero = Produto(
            nome = "Lichia",
            descricao = "Doce",
            valor = BigDecimal("0")
        )
        val produtoComValorMenorQueZero = Produto(
            nome = "Uva",
            descricao = "Thompson",
            valor = BigDecimal("-10.99")
        )

        //Act
        val valorIgualAZeroEhValido = produtoComValorIgualAZero.valorEhValido
        val valorMenorQueZeroEhValido = produtoComValorMenorQueZero.valorEhValido

        //Assert
        valorIgualAZeroEhValido.shouldBeFalse()
        valorMenorQueZeroEhValido.shouldBeFalse()
    }
}

class TestaUsuario {

    @Test
    fun retornaVerdadeiroSeOsDadosDoUsuarioEstaoCertos() {
        //Arrange
        val usuarioValido = Usuario(
            id = "usuario",
            email = "usuario@valido.com",
            senha = "senhaforte123"
        )

        //Act
        val resultado = usuarioValido.ehValido()

        //Assert
        Assert.assertTrue(resultado)
    }

    @Test
    fun retornaFalsoSeOEmailDoUsuarioEstiverErrado() {
        //Arrange
        val usuarioInvalido = Usuario(
            id = "usuario",
            email = "usuarioInvalido.com",
            senha = "senhaforte123"
        )

        //Act
        val resultado = usuarioInvalido.ehValido()

        //Assert
        Assert.assertFalse(resultado)
    }

    @Test
    fun retornaFalsoSeASenhaDoUsuarioEstiverErradaComMenosDe6Caracteres() {
        //Arrange
        val usuarioInvalido = Usuario(
            id = "usuario",
            email = "usuario@valido.com",
            senha = "fraca"
        )

        //Act
        val resultado = usuarioInvalido.ehValido()

        //Assert
        Assert.assertFalse(resultado)
    }
}
