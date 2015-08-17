package blackboard2

class UserController {

  def registration = {
	}
  
  def register = {
	  
	  def newUser= null
	  def messageToUser=""
	  
	  def myUser= params.userName
	  def myPassword= params.password.encodeAsSHA1().toString()
	  
	  
	  def checkUser= User.findByUserName(myUser)
	  
	  if((myUser.equals(""))||(params.password.equals(""))){
		  messageToUser = "Please enter a user name and a password"
	  }  
	  else if((myUser.length()<5)||(params.password.length()<5)||(myUser.length()>45)||(params.password.length()>45)){
		 messageToUser = "Error!!! Your user name and password should be between 5 and 45 characteres"
	  }
	  
	   else if(checkUser){
		  
		  messageToUser = "Sorry, ${params.userName}. This user name already exists, try with a different one!"		  
	  } else{
	  
	  messageToUser = "Welcome, ${params.userName}.You have succesfully registered to blackboard.Log in to star using our platform"
	  newUser= new User(userName:myUser,password:myPassword)
	  newUser.save(flush:true)
	  
	  }
	  render(view:"registration", model:[message:messageToUser, user:newUser])
	  
  }
  
	
	def homePage = {
	}
	
	
	def authenticate = {
		def user = User.findByUserNameAndPassword(params.userName, params.password.encodeAsSHA1().toString())
		
		if(user){
			session.user = user
			flash.message = "Hello ${user.userName}!"
			redirect(controller:"user" ,action:"homePage")
			
		}else{
		flash.message = "Sorry, ${params.userName}. Please try again."
		
		
		redirect(uri: "/")

		
	
		}
	}
	
	def logout = {
		flash.message = "Goodbye ${session.user.userName}"
		session.user = null
		redirect(uri: "/")
		
	}
	
		
	
   //def scaffold=true
}
