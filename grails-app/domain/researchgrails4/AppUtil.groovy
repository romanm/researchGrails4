package researchgrails4

import researchgrails4.Job8;

class AppUtil {
	static public boolean afterTwoday( Job8 previosJob8,TimeFilter timeFilter, Job8 currentJob8){
		def now = new Date()
		def previosJob8InFilter = previosJob8 == null ? true : now.before(previosJob8.submissionTime+timeFilter.getDay())
		def currentJob8InFilter = now.before(currentJob8.submissionTime+timeFilter.getDay())
		return previosJob8InFilter && !currentJob8InFilter
	}
}
