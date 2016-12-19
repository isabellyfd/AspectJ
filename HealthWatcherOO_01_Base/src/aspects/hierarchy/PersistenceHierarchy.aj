package aspects.hierarchy;

import lib.persistence.*;

public aspect PersistenceHierarchy {
	declare parents: PersistenceMechanism implements IPersistenceMechanism;
	declare parents: PersistenceMechanismMem implements IPersistenceMechanism;
}
