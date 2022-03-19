package calculadora2022;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;

public class StepDefinitions {
	private Calculadora calc;
	private double valorResultante;
	private int valorEntero;
	private boolean noSeHaPodidoDividirPorCero = false;
	private boolean esPrimo;

	@Given("I have a calculator")
	public void i_have_a_calculator() {
		calc = new Calculadora();
	}

	@When("I want to add {double} and {double}")
	public void i_want_to_add_a_and_b(double a, double b) {
		valorResultante = calc.suma(a, b);
	}

	@Then("I should recieve a correct {double}")
	public void i_should_recieve_a_correct_answer(double valor) {
		Assertions.assertEquals(valor, valorResultante);
	}

	@When("I want to substract from {double} value {double}")
	public void i_want_to_substract_from_value(double a, double b) {
		valorResultante = calc.resta(a, b);
	}

	@When("I want to multiply {double} and {double}")
	public void i_want_to_multiply_and(double a, double b) {
		valorResultante = calc.mult(a, b);
	}

	@When("I want to divide {double} by {double}")
	public void i_want_to_divide_and(double a, double b) {
		valorResultante = calc.divide(a, b);
	}

	@When("I want to divide any number by zero")
	public void i_want_to_divide_any_number_by_zero() {
		try {
			calc.divide(8, 0);
		} catch (ArithmeticException e) {
			noSeHaPodidoDividirPorCero = true;
		}
	}

	@Then("I should not be able to divive by zero")
	public void i_should_not_be_able_to_divive_by_zero() {
		Assertions.assertEquals(true, noSeHaPodidoDividirPorCero);
	}

	@When("I want to compute the factorial of {int}")
	public void i_want_to_compute_the_factorial_of(int int1) {
		valorEntero = calc.fact(int1);
	}

	@Then("I should recieve a correct integer {int}")
	public void i_should_recieve_a_correct_integer(int valor) {
		Assertions.assertEquals(valor, valorEntero);
	}

	@When("I want to know if {int} is prime")
	public void i_want_to_know_if_is_prime(int int1) {
		esPrimo = calc.esPrimo(int1);
	}

	@Then("The program should identify it is a prime number")
	public void i_should_recieve_true() {
		Assertions.assertEquals(true, esPrimo);
	}

}
