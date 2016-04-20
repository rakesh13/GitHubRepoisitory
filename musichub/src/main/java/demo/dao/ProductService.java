package demo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import demo.model.Product;

@Service
@Transactional
public class ProductService 
{
	@Autowired
	private ProductDAOImpl pdi;
	
	public List<Product> getAllProducts()
	{
		return pdi.getAllProducts();
	}
	public Product getProduct(int id) 
	{
		return pdi.getProduct(id);
	}
	public int insertProduct(Product p)
	{
		int res;
		res=pdi.insertProduct(p);
		if(res==1)
		{
			return 1;
		}
		else
		{
			return 0;
		}
	}
	public boolean deleteProduct(int id) 
	{
		boolean res;
		res=pdi.deleteProduct(id);
		if(res)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}
