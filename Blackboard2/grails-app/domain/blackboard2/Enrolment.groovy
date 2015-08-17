package blackboard2

class Enrolment {
	
	static searchable= true
	
	User user
	Course course
	
	String toString(){
		"$user $course "
	}

    static constraints = {
		user()
		course()
    }
}
