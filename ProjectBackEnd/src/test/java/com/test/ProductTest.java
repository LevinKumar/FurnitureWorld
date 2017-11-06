package com.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dao.ProductDAO;
import com.model.Product;

public class ProductTest {

	static ProductDAO productDAO;

	@BeforeClass
	 public static void initialize()
	 {
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
        productDAO =(ProductDAO)configApplnContext.getBean("productDAO");
	 }

@Test
public void addUpdateTest()
{
	Product product=new Product();
	product.setProductId(101);
	product.setProductName("Dining table");
	product.setProductDesc("Table to have dinner");
	product.setStock(240);
	product.setCatName("Tables");
	product.setSupplierId(201);	
	product.setPrice(450);
	
	assertTrue("problem in Insertion",productDAO.updateProduct(product));
}

	@Ignore
	@Test
	public void retrieveProductTest()
	{
		List<Product> listProduct = productDAO.retrieveProduct();
		assertTrue("List is Empty",listProduct.size()>0);
		
		for(Product product:listProduct)
		{
			System.out.println("Product ID"+product.getProductId());
			System.out.println("Product Name"+product.getProductName());
			System.out.println("Product Desc"+product.getProductDesc());
		
		}
	}
}
