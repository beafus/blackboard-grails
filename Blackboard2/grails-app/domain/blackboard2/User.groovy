package blackboard2

class User {
	
	static searchable= false

    String userName
	String password
	


	
	String toString(){
		"$userName $password"
		
	}

    static constraints = {
		
		userName nullable:false, size: 5..45
		password nullable:false, size: 5..45
		password(password:true)
		
    }
}
