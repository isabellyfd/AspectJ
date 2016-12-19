package aspects;
import healthwatcher.business.HealthWatcherFacade;

public aspect HWFacadeObserver {
	pointcut mainExe() : execution(void HealthWatcherFacade.main(String[]));
	
	after() throwing (Exception e): mainExe() {
		e.getStackTrace();
	}
}
