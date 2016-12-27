package healthwatcher.business.employee;

import lib.exceptions.ObjectAlreadyInsertedException;
import lib.exceptions.ObjectNotFoundException;
import lib.exceptions.ObjectNotValidException;
import lib.exceptions.RepositoryException;
import healthwatcher.data.IEmployeeRepository;
import healthwatcher.model.employee.Employee;

public class EmployeeRecord {

	private IEmployeeRepository employeeRepository;

	public EmployeeRecord(IEmployeeRepository rep) {
		this.employeeRepository = rep;
	}

	public Employee search(String login) throws ObjectNotFoundException, RepositoryException {
		return employeeRepository.search(login);
	}

	public void insert(Employee employee) throws ObjectNotValidException,
			ObjectAlreadyInsertedException, RepositoryException {
			employeeRepository.insert(employee);
	}

	public void update(Employee employee) throws ObjectNotValidException, ObjectNotFoundException,
			ObjectNotValidException, RepositoryException {
		employeeRepository.update(employee);
	}
	
	public IEmployeeRepository getEmployeeRepository(){
		return this.employeeRepository;
	}
}