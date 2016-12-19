package aspects.hierarchy;

import java.io.Serializable;
import healthwatcher.model.complaint.DiseaseType;
import healthwatcher.model.complaint.Situation;
import healthwatcher.model.complaint.Symptom;
import healthwatcher.model.address.Address;
import healthwatcher.model.complaint.Complaint;
import healthwatcher.model.employee.Employee;
import healthwatcher.model.healthguide.*;
import lib.distribution.rmi.IteratorRMISourceAdapter;
import lib.util.ConcreteIterator;
import lib.util.Date;

public aspect SerializableMaker {
	declare parents: DiseaseType implements Serializable;
	declare parents: Situation implements Serializable;
	declare parents: Symptom implements Serializable;
	declare parents: Address  implements Serializable;
	declare parents: Complaint implements Serializable;
	declare parents: Employee implements Serializable;
	declare parents: HealthUnit implements Serializable;
	declare parents: MedicalSpeciality implements Serializable;
	declare parents: IteratorRMISourceAdapter implements Serializable;
	declare parents: ConcreteIterator implements Serializable;
	declare parents: Date implements Serializable;
}
