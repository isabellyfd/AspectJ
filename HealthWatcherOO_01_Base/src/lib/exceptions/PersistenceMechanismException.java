package lib.exceptions;

public class PersistenceMechanismException extends Throwable  {

	public PersistenceMechanismException(String erro) {
		super("ExcecaoDados: " + erro);
	}
}
