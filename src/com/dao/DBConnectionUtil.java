package com.dao;

import java.sql.Connection;

public interface DBConnectionUtil {
	Connection getConnection();

	void closeConnection();

}
