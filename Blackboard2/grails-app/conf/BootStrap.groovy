import blackboard2.Course
import blackboard2.User

class BootStrap {

    def init = { servletContext ->
		
		if(!User.findByUserName("Beatriz")){
			def aSampleUser= new User(userName:"Beatriz", password:"fuster".encodeAsSHA1().toString())
			aSampleUser.save(flush:true)
		}
		
		if(!User.findByUserName("Jaime")){
			def aSampleUser2= new User(userName:"Jaime", password:"tundidor".encodeAsSHA1().toString())
			aSampleUser2.save(flush:true)
		}
		
		
		
		if(!User.findByUserName("Andrea")){
			def aSampleUser3= new User(userName:"Andrea", password:"gomez".encodeAsSHA1().toString())
			aSampleUser3.save(flush:true)
		}
		
		if(!User.findByUserName("Alicia")){
			def aSampleUser4= new User(userName:"Alicia", password:"aranda".encodeAsSHA1().toString())
			aSampleUser4.save(flush:true)
		}
		
		
		
		if(!Course.findByTitle("Intelligent Device Application")){
			def aSampleCourse= new Course(title:"Intelligent Device Application", creditHours:"2-2-3",description:"Engage students in learning about Mobile Application development.")
			aSampleCourse.save(flush:true)
		}
		
		if(!Course.findByTitle("Intelligent Device Apps")){
			def aSampleCourse1= new Course(title:"Intelligent Device Apps", creditHours:"2-2-3",description:"Covered with various technologies on mobile and robotic platforms. ")
			aSampleCourse1.save(flush:true)
		}
		
		if(!Course.findByTitle("Web Site App Development")){
			def aSampleCourse2= new Course(title:"Web Site App Development", creditHours:"3-0-3",description:"Programming the Common Gateway Interface (CGI) for Web pages is introduced with emphasis on creation of interfaces to handle HTML form data.")
			aSampleCourse2.save(flush:true)
		}
		
		if(!Course.findByTitle("IT Entrepeneurship")){
			def aSampleCourse2= new Course(title:"IT Entrepeneurship", creditHours:"3-0-3",description:"This course offers a comprehensive, integrated, and proven step-by-step approach to creating innovative, highly successful IT enterprises.")
			aSampleCourse2.save(flush:true)
		}
		
		
		
    }
    def destroy = {
    }
}
