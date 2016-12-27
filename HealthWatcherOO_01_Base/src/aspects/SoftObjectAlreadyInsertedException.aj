package aspects;

import lib.exceptions.ObjectAlreadyInsertedException;

public aspect SoftObjectAlreadyInsertedException {

	declare soft : ObjectAlreadyInsertedException : execution(* *(..));
	
}
