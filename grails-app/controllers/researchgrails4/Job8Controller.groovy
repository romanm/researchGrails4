package researchgrails4

import static org.springframework.http.HttpStatus.*

import org.apache.jasper.compiler.Node.ParamsAction;

import grails.transaction.Transactional

public enum TimeFilter {
	TODAY("today"),
	TWODAY("2 day"),
	WEEK("week"),
	MONTH("month"),
	HALFYEAR("1/2 year"),
	ALL('all'),
	NONE('none'),
	
	final String value
	TimeFilter(String value){ this.value = value }
	
	@Override
	String toString(){ value }
	String getKey() { name() }
	int getDay() {
		if(this == TODAY){
			1
		}else if(this == TWODAY){
			2
		}else if(this == WEEK){
			7
		}else if(this == MONTH){
			31
		}else if(this == MONTH){
			365/2
		}else
			10000000
	}
}

@Transactional(readOnly = true)
class Job8Controller {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		if(params.researchSubmissionTime){
			println "params.researchSubmissionTime = " + params.researchSubmissionTime
			if(params.researchSubmissionTime == "1"){
				int minusDay = 1000000
				switch (params.timeFilter.toString()){
					case TimeFilter.TODAY.toString():		minusDay = 1; break
					case TimeFilter.TWODAY.toString():		minusDay = 2; break
					case TimeFilter.WEEK.toString():		minusDay = 7; break
					case TimeFilter.MONTH.toString():		minusDay = 31; break
					case TimeFilter.HALFYEAR.toString():	minusDay = 365/2; break
				}
				
				def results = Job8.withCriteria {
					def now = new Date()
					between('submissionTime', now-minusDay-1, now)
				}
				println "params.researchSubmissionTime = GO " + results.size
				println "params.researchSubmissionTime = GO " + results
				respond results, model:[job8InstanceCount: results.size]
			}
		}else{
			respond Job8.list(params), model:[job8InstanceCount: Job8.count()]
		}
	}

	def show(Job8 job8Instance) {
		respond job8Instance
	}

	def create() {
		respond new Job8(params)
	}

	@Transactional
	def save(Job8 job8Instance) {
		if (job8Instance == null) {
			notFound()
			return
		}

		if (job8Instance.hasErrors()) {
			respond job8Instance.errors, view:'create'
			return
		}

		job8Instance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.created.message', args: [message(code: 'job8.label', default: 'Job8'), job8Instance.id])
				redirect job8Instance
			}
			'*' { respond job8Instance, [status: CREATED] }
		}
	}

	def edit(Job8 job8Instance) {
		respond job8Instance
	}

	@Transactional
	def update(Job8 job8Instance) {
		if (job8Instance == null) {
			notFound()
			return
		}

		if (job8Instance.hasErrors()) {
			respond job8Instance.errors, view:'edit'
			return
		}

		job8Instance.save flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.updated.message', args: [message(code: 'Job8.label', default: 'Job8'), job8Instance.id])
				redirect job8Instance
			}
			'*'{ respond job8Instance, [status: OK] }
		}
	}

	@Transactional
	def delete(Job8 job8Instance) {

		if (job8Instance == null) {
			notFound()
			return
		}

		job8Instance.delete flush:true

		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.deleted.message', args: [message(code: 'Job8.label', default: 'Job8'), job8Instance.id])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form multipartForm {
				flash.message = message(code: 'default.not.found.message', args: [message(code: 'job8.label', default: 'Job8'), params.id])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}
}
