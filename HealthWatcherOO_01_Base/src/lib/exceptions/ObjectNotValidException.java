package lib.exceptions;

public class ObjectNotValidException extends Throwable {

	public ObjectNotValidException(String erro) {
		super("ExcecaoDados: " + erro);
	}
}
