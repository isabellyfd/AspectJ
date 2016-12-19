package aspects.hierarchy;

import healthwatcher.model.complaint.AnimalComplaint;
import healthwatcher.model.complaint.Complaint;
import healthwatcher.model.complaint.FoodComplaint;
import healthwatcher.model.complaint.SpecialComplaint;


public aspect CompaintHierarchy {
	
	declare parents : AnimalComplaint extends Complaint;
	declare parents : FoodComplaint extends Complaint;
	declare parents : SpecialComplaint extends Complaint;

}
