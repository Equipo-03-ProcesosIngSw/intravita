package selenium;

import org.junit.Test;
import org.openqa.selenium.WebDriver;

import seleniumAux.Driver;
import seleniumAux.GeneralAux;

public class LoginUsuarioIncorrecto {
	private static WebDriver driver;
    private static String root;
    @Test
    public  void loginUserIn()
    {
    	root = Driver.getRoot();
        driver = Driver.getDriver();
        
        GeneralAux.redirect(root, "/login");
        GeneralAux.login("falso", "false", "Este usuario no existe");
                
  
        
    }
    
    
    
    

    /*private static void default_test()
    {

        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get(root + "/default");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        if(driver.getCurrentUrl().contains("/login"))
            System.out.println("CORRECTO: Redirección de /default correcta para usuarios Anonimo");
        else
            System.out.println("FALLA: Redirección de /default correcta para usuarios Anonimo");

        LoginWebTests.login("user.user", "user");
        driver.get(root +  "/default");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        if(driver.getCurrentUrl().contains("/user/index"))
            System.out.println("CORRECTO: Redirección de /default para usuarios normales");
        else
            System.out.println("FALLA: Redirección de /default para usuarios normales: " + driver.getCurrentUrl());
        LoginWebTests.logout();

        LoginWebTests.login("admin", "admin");
        driver.get(root +  "/default");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        if(driver.getCurrentUrl().contains("/admin/index"))
            System.out.println("CORRECTO: Redirección de /default para administradores");
        else
            System.out.println("FALLA: Redirección de /default para administradores");
        LoginWebTests.logout();
    }*/

}
