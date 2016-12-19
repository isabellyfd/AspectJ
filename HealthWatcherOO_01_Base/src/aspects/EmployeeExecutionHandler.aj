package aspects;

import healthwatcher.business.employee.EmployeeRecord;
import healthwatcher.model.employee.Employee;
import lib.exceptions.ExceptionMessages;
import lib.exceptions.ObjectAlreadyInsertedException;




public aspect EmployeeExecutionHandler {
	pointcut insert(EmployeeRecord er, Employee emp): 
			target(er) && args(emp) && execution(void EmployeeRecord.insert(Employee));
	
	before(EmployeeRecord er, Employee emp) throws Throwable : insert(er, emp) {
		er.getManager().beginExecution(emp.getLogin());

		if (er.getEmployeeRepository().exists(emp.getLogin())){
			throw new ObjectAlreadyInsertedException(ExceptionMessages.EXC_JA_EXISTE);
		}
	
	}
	
	after(EmployeeRecord er, Employee emp): insert(er, emp) {
		er.getManager().endExecution(emp.getLogin());
	}
	
	after(EmployeeRecord er, Employee emp) throwing (Error e): insert(er, emp){
		
	}
}
