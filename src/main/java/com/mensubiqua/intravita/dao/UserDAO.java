package com.mensubiqua.intravita.dao;

import java.io.File;
import java.util.ArrayList;

import com.mensubiqua.intravita.model.User;

/**
 * UserDAO - Interfaz que declara los m�todos que comunican los usuarios con la BBDD
 * 
 *
 * @author Ulises Ceca, Ignacio Dones, Jos� Mar�a Sim�n, Miguel Ampuero, Eduardo Parra
 * @since 1.4
 * @version 1.8
 */
public interface UserDAO {

    public void insert(User user);
    public void delete(String nickname, File foto);
    public User find(String nickname);
    public ArrayList<User> selectAll();
    public void update(User user, String rutaFoto, String nickname);
    public void updateRole(String nickname, String rol);
    public void updatePassword(User user);
    public ArrayList<User> search(String cadena);
}
