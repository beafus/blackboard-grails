package blackboard2


class CourseController {

  
	
	def show(Course courseInstance) {
		
		//render(view:"show", model:[courseInstance])
		respond courseInstance

	}

	
	def searchableService
	
	def searchableView = {
		
		def searchText = params.searchText
		//def searchResult =  searchableService.search(searchText,[ result: 'every', max: 5])
		def searchResult =  searchableService.search(searchText,[offset:0, max: 5])
		//return [searchResult: searchableService.search(params.q, params)]
		render(view:"searchableView", model:[searchResult:searchResult])
		
	}
	
	
   
	

	
	def enrolment={->
		
		render(view:"enrolment", model:[courses:Course.list()])
		
	}
	
	
    def course_list={
		
		def myList= Course.list()
		
		

		render(view:"course_list", model:[ courses:myList])
		
	}
	
	def enrolment_list={
		
		def myuser= session.user
		
		
		def myCoursesList = Enrolment.findAllWhere(user: myuser)
		
		render(view:"enrolment_list", model:[ enrolments:myCoursesList])
	}
	
	
	
	
	def makeEnrolment = { ->
		
		def courseId= params.courseId
		
		def messageToUser=""
		def newEnrolment = null
		
		
		def myUser= session.user 
		
			
		if(courseId){
			def aCourse = Course.findById(courseId)
			def anEnrolment = Enrolment.findByCourseAndUser(aCourse, myUser)
		
			
			if(aCourse && !anEnrolment){
			
				newEnrolment= new Enrolment(user:myUser,course:aCourse)
				newEnrolment.save(flush:true)
			}
			else{
				messageToUser ="couldnt find the course you wanted or you have already enroled to that course"								
			}
		}
		else{
			messageToUser= "Please select the course you want to enroll"
			}
		
		render(view:"enrolment", model:[message:messageToUser,user:myUser ,enrolment:newEnrolment,courses:Course.list(),enrolments:Enrolment.list()])
			
			
		}
	
	
}
