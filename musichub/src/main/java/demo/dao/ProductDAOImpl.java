package demo.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transaction;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import demo.model.Product;

@Repository

public class ProductDAOImpl implements ProductDAO
{
	List<Product> p;
	public ProductDAOImpl()
	{
		p=new ArrayList<Product>();
		/*p.add(new Product(101, 2000, "Guitar", "New", "Very good Guitar", "JBoss","guitar.jpg"));
		p.add(new Product(102, 4000, "Guitar", "Old", "Very good old Guitar", "Sony","drum.jpg"));
		p.add(new Product(103, 5000, "Piano", "New", "Very good Piano", "Samsung","dvd.jpg"));
		*/
	}
	
	@Autowired
	private SessionFactory sf;
	public List<Product> getAllProducts() 
	{
		Session s=sf.getCurrentSession();
		org.hibernate.Query q=s.createQuery("select p1 from Product p1");
		p=q.list();
		return p;
	}

	public Product getProduct(int id) 
	{
		Session s=sf.getCurrentSession();
		
		Product prod=new Product();
		prod=(Product) s.get(Product.class, new Integer(id));
		/*for(Product x:p)
		{
			if(x.getId()==id)
			{
				prod=new Product(x.getId(), x.getPrice(), x.getName(), x.getCondition(), x.getDescription(), x.getManufacturer(),x.getImage());
			}
		}*/
		return prod;
	}
	;
	public int insertProduct(Product p)
	{
		try
		{
			Session s=sf.openSession();
			org.hibernate.Transaction tx=s.beginTransaction();
			//Product prod=new Product(p.id, price, name, condition, description, manufacturer, image);
			s.save(p);
			s.flush();
			tx.commit();
			s.close();
			return 1;
		}
		catch(Exception ex)
		{
			//tx.rollback();
			return 0;
		}
	}

	public boolean deleteProduct(int id) 
	{
		try
		{
			Session s=sf.openSession();
			Product prod=new Product();
			
			org.hibernate.Transaction tx=s.beginTransaction();
			
			prod=(Product) s.get(Product.class, new Integer(id));
			s.delete(prod);
			s.flush();
			tx.commit();
			s.close();
			return true;
		}
		catch(Exception ex)
		{
		
			return false;
		}
	}

	public boolean updateProduct(int id) 
	{
		
		return false;
	}

}
