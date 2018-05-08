package com.dao;

import java.util.List;

import com.bean.Products;

public interface ProductsDao {
	List<Products> getProducts();
	Products getById(int id);
}
