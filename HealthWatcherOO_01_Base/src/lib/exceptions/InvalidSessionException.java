package lib.exceptions;

public class InvalidSessionException {

	public InvalidSessionException(String erro) {
		super(erro);
	}

	public InvalidSessionException() {
		this("Invalid session, go to the first page!");
	}
}