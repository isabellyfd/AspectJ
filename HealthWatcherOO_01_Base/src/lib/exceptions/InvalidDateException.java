package lib.exceptions;

public class InvalidDateException  {

	public InvalidDateException(int segundos, int minutos, int hora) {
		super("ExcecaoHora: ");
	}

	public InvalidDateException(String erro) {
		super("ExcecaoHora:" + erro);
	}
}