package demo.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Product implements Serializable
{
	@Id
	public int id;
	public int price;
	private String name,condition,description,manufacturer,image;
	public Product()
	{
		
	}
	/*public Product(int pid,int price,String name,String condition,String description,String manufacturer,String image)
	{
		this.id=pid;
		this.name=name;
		this.price=price;
		this.condition=condition;
		this.description=description;
		this.manufacturer=manufacturer;
		this.image=image;
		
	}*/
	
	public String getImage() {
		return image;
	}
	public void setId(int id) {
		this.id = id;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public int getId() {
		return id;
	}
	public int getPrice() {
		return price;
	}
	public String getName() {
		return name;
	}
	public String getCondition() {
		return condition;
	}
	public String getDescription() {
		return description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	
}
