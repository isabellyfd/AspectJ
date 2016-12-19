package aspects.hierarchy;

import healthwatcher.view.servlets.*;

public aspect HWServletHierarchy {
	declare parents: ServletGet* extends HWServlet;
	declare parents: ServletInsert* extends HWServlet;
	declare parents: ServletLogin extends HWServlet;
	declare parents: ServletSearch* extends HWServlet;
	declare parents: ServletUpdate* extends HWServlet;
	declare parents: ServletWebServer extends HWServlet;
}
