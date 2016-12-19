package aspects;

import healthwatcher.model.complaint.AnimalComplaint;
import healthwatcher.model.complaint.Complaint;
import healthwatcher.model.complaint.FoodComplaint;
import healthwatcher.business.complaint.ComplaintRecord;
import lib.util.Functions;

public aspect ValidateComplaint {
	
	pointcut insert(Complaint comp): execution(int ComplaintRecord.insert(Complaint)) && args(comp);
	
	before(Complaint comp): insert(comp) {
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
