package edu.mx.utvm.congreso.service;

import edu.mx.utvm.congreso.dominio.UserRole;

public interface UserRoleService {
	void save(UserRole userRole);
	UserRole read(String id);
	void update(UserRole userRole);
}
