package com.bean;



public class Products {
	private String category;
	 private int id;
	 private String name;
	 private String description;
	 private double price;
	 private String imgsrc;
	 
	 public Products(String category, int id, String name, String description, double price, String imgsrc) {
			
			this.category = category;
			this.id = id;
			this.name = name;
			this.description = description;
			this.price = price;
			this.imgsrc=imgsrc;
	 }
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Products [category=" + category + ", id=" + id + ", name=" + name + ", description=" + description
				+ ", price=" + price + ", imgsrc=" + imgsrc + "]";
	}
	
	
	 
}
