package aspects;

import healthwatcher.model.complaint.AnimalComplaint;
import healthwatcher.model.complaint.Complaint;
import healthwatcher.model.complaint.FoodComplaint;
import healthwatcher.business.complaint.ComplaintRecord;
import lib.exceptions.ObjectAlreadyInsertedException;
import lib.exceptions.RepositoryException;
import lib.util.Functions;

public aspect ValidateComplaint {
	
	pointcut insert(ComplaintRecord cr,  Complaint comp): execution(int ComplaintRecord.insert(Complaint)) && args(comp) && target(cr);
	
	before(ComplaintRecord cr, Complaint comp) throws RepositoryException, ObjectAlreadyInsertedException: insert(cr, comp) {
		this.validate(comp);
		if (cr.getComplaintRecord().exists(comp.getCodigo())) {
			throw new ObjectAlreadyInsertedException("Complaint code already registered");
		}
	}
	
	
	public void  validate(Complaint comp){
		Functions f = new Functions();
		
		if (comp == null){
			throw new IllegalArgumentException();
		}
		
		
		f.campoPreenchido(comp.getDescricao());

		if (comp instanceof AnimalComplaint) {
			f.campoPreenchido(((AnimalComplaint) comp).getOccurenceLocalAddress());
			f.campoPreenchido(((AnimalComplaint) comp).getAnimal());
		}

		if (comp instanceof FoodComplaint) {
			f.campoPreenchido(((FoodComplaint) comp).getQtdeComensais());
			f.campoPreenchido(((FoodComplaint) comp).getQtdeDoentes());
		}
	}
}
