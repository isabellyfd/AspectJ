package aspects.hierarchy;

import healthwatcher.view.servlets.HWServlet;
import healthwatcher.view.servlets.ServletConfigRMI;
import javax.servlet.http.HttpServlet;

public aspect ServletMarker {
	declare parents: HWServlet extends HttpServlet;
	declare parents: ServletConfigRMI extends HttpServlet;
}
