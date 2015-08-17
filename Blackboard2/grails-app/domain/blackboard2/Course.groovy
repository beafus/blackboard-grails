package blackboard2

class Course {
	
	static searchable= true

    String title
	String creditHours
	String description
	
	String toString(){
		"Course: $title ,  Credit hours: $creditHours "
		
	}
	
    static constraints = {
		title()
		creditHours()
		description()
    }
}
