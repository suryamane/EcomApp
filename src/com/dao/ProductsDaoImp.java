package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bean.Products;

public class ProductsDaoImp implements ProductsDao {
	static List<Products> products = new ArrayList<Products>();
	static {
		DBConnectionUtil conn = new DbConnections();

		try {
			Connection c1 = conn.getConnection();
			Statement stmt = c1.createStatement();
			ResultSet rs = stmt.executeQuery("select * from products;");

			while (rs.next()) {
				Products prod = new Products(rs.getString("category"), rs.getInt("id"), rs.getString("name"),
						rs.getString("description"), rs.getDouble("price"), rs.getString("imgsrc"));
				products.add(prod);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.closeConnection();
		}

	}

	@Override
	public List<Products> getProducts() {
		// TODO Auto-generated method stub
		return products;
	}

}
