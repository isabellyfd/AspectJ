package lib.exceptions;

public class ObjectAlreadyInsertedException extends Throwable{

	public ObjectAlreadyInsertedException(String erro) {
		super("ExcecaoDados: " + erro);
	}
}
