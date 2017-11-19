package cucumberJava;

//Junit imports
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.io.File;

//Cucumber imports

import cucumber.annotation.en.Given;
import cucumber.annotation.en.Then;
import cucumber.annotation.en.When;
import cucumber.runtime.PendingException;

//import de otros paquetes
import com.mensubiqua.intravita.model.User;
import com.mensubiqua.intravita.auxiliar.Funciones;
import com.mensubiqua.intravita.dao.UserDAOImpl;



public class loginRegistro {

	private User usuario;
	private UserDAOImpl dao;
	
	private String nombre = "Miguel";
	private String apellido = "Ampuero";
	private String email = "user@email.com";
	private String pass = "password";
	private String nick = "nickMiguel";
	
	@Given("^Un nuevo usuario inserta sus datos$")
	public void Un_nuevo_usuario_inserta_sus_datos() {
		
		
		 usuario = new User(Funciones.encrypt(nombre), Funciones.encrypt(apellido), Funciones.encrypt(email), Funciones.encrypt_md5(pass),
         		"ROLE_USER", Funciones.encrypt(nick) ,false);
		 dao = new UserDAOImpl();
	    
	}

	@When("^se comprueba en la bbdd$")
	public void se_comprueba_en_la_bbdd() {
		User u = null;
		dao.find(Funciones.encrypt("miguel.ampu"));
		if(u == null){
			dao.insert(usuario);
		}
	    
	}

	@Then("^usuario creado$")
	public void usuario_creado() {
		usuario = null;
	    usuario = dao.find(Funciones.encrypt(nick));
	    if(usuario!=null)
	    	assertTrue(usuario != null);
	    dao.delete(nick, new File(""));;
	}
}