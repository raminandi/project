package DAO;

import Models.LoginModel;

public interface LoginDAO {
	public LoginModel get(String name, String pass);
}
