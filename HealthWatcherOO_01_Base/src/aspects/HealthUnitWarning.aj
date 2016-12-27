package aspects;

import healthwatcher.data.IHealthUnitRepository;

public aspect HealthUnitWarning {

	declare error: 
			execution(*  IHealthUnitRepository+.*(..)) && !(within(healthwatcher.data.mem.HealthUnitRepositoryArray) || within(healthwatcher.data.rdb.HealthUnitRepositoryRDB)):
				"HealthUnitRepositoryRDB and HealthUnitRepositoryArray types can only implement IHealthUnitRepository";
}