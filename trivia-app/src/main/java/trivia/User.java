package trivia;

import org.javalite.activejdbc.Base;
import org.javalite.activejdbc.Model;
import java.util.List;
import org.javalite.activejdbc.validation.UniquenessValidator;

public class User extends Model {
	
	static{
    	validatePresenceOf("username").message("Please, provide your username");
  		validatePresenceOf("password").message("Please, provide your password");
  		validateWith(new UniquenessValidator("username")).message("This username is already taken."); 		
	}

	//verifica el inicio de sesion	
	public static Boolean validateLogin(String username,String password,String asAdmin){	
		List<User> users  = User.where("username ='"+username+"' AND password ='"+password+"'");
		if(users.size() != 0){
			User p =  users.get(0);
			String p1 = p.getString("permissions");
			if(asAdmin != null){
				return (p1.equals("YES"));
			}else{
				return (p1.equals("NO"));
			}				
		}else{
			return false;
		}
  	}//End class validateLogin

}//End Class User