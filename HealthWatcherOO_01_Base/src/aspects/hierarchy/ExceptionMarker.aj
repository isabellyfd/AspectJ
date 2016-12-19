package aspects.hierarchy;

import lib.exceptions.*;

public aspect ExceptionMarker {
	declare parents: CommunicationException extends Exception;
	declare parents: InsertEntryException extends Exception;
	declare parents: Invalid* extends Exception;
	declare parents: ObjectAlreadyInsertedException extends Exception;
	declare parents: ObjectNot* extends Exception;
	declare parents: PersistenceMechanismException extends Exception;
	declare parents: RepositoryException extends Exception;
	declare parents: SituationFacadeException extends Exception;
	declare parents: TransactionException extends Exception;
	declare parents: UpdateEntryException extends Exception;
}
