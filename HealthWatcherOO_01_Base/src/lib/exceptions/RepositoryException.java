package lib.exceptions;

public class RepositoryException extends Throwable  {

	public RepositoryException(String erro) {
		super("ExcecaoDados: " + erro);
	}
}
