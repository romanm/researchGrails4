package researchgrails4

class Job8 {
	String name

	String    username
	Integer   type                    //discretization -0, simulation -1, post-processing-2
	String    jobDir
	String    cdiFile
	Long      externalJobId           //external jobId, lsf, etc

	Integer   rank
	Float     timeToStart
	Float     timeToFinish

	Long      numTimeSteps
	Long      timeStep = 0            // current step
	String    powerflowVersion
	Boolean   summaryFlag = false     // Shows if summary Data is being collected
	Boolean   hidden = false          // Shows if summary Data is being collected

	Long      percentage

	Date submissionTime = new Date()

	static constraints = {
	}

}
