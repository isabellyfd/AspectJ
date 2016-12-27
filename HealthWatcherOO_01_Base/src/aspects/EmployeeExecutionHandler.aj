package aspects;

import healthwatcher.business.employee.EmployeeRecord;
import healthwatcher.model.employee.Employee;
import lib.concurrency.ConcurrencyManager;
import lib.exceptions.ExceptionMessages;
import lib.exceptions.ObjectAlreadyInsertedException;
import lib.exceptions.RepositoryException;




public aspect EmployeeExecutionHandler {
	private final ConcurrencyManager  manager = new ConcurrencyManager();	
	
	pointcut insert(EmployeeRecord er, Employee emp): 
			target(er) && args(emp) && execution(void EmployeeRecord.insert(Employee));
	
	
	void around(EmployeeRecord er, Employee emp) throws ObjectAlreadyInsertedException, RepositoryException : insert(er, emp) {
		manager.beginExecution(emp.getLogin());
		
		if (er.getEmployeeRepository().exists(emp.getLogin())){
			throw new ObjectAlreadyInsertedException(ExceptionMessages.EXC_JA_EXISTE);
		}
		
		proceed(er, emp);
		manager.endExecution(emp.getLogin());
	}

}
