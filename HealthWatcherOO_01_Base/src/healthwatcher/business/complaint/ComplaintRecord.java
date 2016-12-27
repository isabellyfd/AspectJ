package healthwatcher.business.complaint;

import lib.exceptions.ObjectAlreadyInsertedException;
import lib.exceptions.ObjectNotFoundException;
import lib.exceptions.ObjectNotValidException;
import lib.exceptions.RepositoryException;
import lib.util.Functions;
import lib.util.IteratorDsk;
import healthwatcher.data.IComplaintRepository;
import healthwatcher.model.complaint.AnimalComplaint;
import healthwatcher.model.complaint.Complaint;
import healthwatcher.model.complaint.FoodComplaint;


public class ComplaintRecord {

	private IComplaintRepository complaintRep;

	public ComplaintRecord(IComplaintRepository rep) {
		this.complaintRep = rep;
	}

	public Complaint search(int code) throws RepositoryException, ObjectNotFoundException {
		return complaintRep.search(code);
	}

	public int insert(Complaint complaint) throws ObjectNotValidException,
	ObjectAlreadyInsertedException, ObjectNotValidException, RepositoryException {
		return complaintRep.insert(complaint);
	}


	public void update(Complaint q) throws RepositoryException, ObjectNotFoundException,
			ObjectNotValidException {
		complaintRep.update(q);
	}

	public IteratorDsk getComplaintList() throws RepositoryException, ObjectNotFoundException {
		return complaintRep.getComplaintList();

	}
	
	public IComplaintRepository getComplaintRecord(){
		return this.complaintRep;
	}
}