package demo.dao;

import java.util.List;

import demo.model.Product;

public interface ProductDAO 
{
	public List<Product> getAllProducts();
	public Product getProduct(int id);
//	public int insertProduct(int id,int price,String name,String condition,String description,String manufacturer,String image);
	public int insertProduct(Product p);
	public boolean deleteProduct(int id);
	public boolean updateProduct(int id);
	
}
