package queens.product;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public  class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void insert(Product p) {
		sessionFactory.getCurrentSession().save(p);
	}

	@Transactional
	public void update(Product p) {
		sessionFactory.getCurrentSession().update(p);
	}

	@Transactional
	public void delete(int pid) {
		System.out.println(pid);
		sessionFactory.getCurrentSession().createQuery("delete from Product as p where p.Id = :id")
		.setInteger("id", pid).executeUpdate();

	}

	@Transactional
	public Product getProduct(int pid) {
		List<Product> list=sessionFactory.getCurrentSession().createQuery("from Product where Id=:id")
				.setInteger("id", pid).list();
				return list.get(0);
		
	}

	@Transactional
	public List<Product> getProducts() {
		List<Product> list =this.getSessionFactory().getCurrentSession().createQuery("from Product p").list();
	   return list;
	}
	public SessionFactory getSessionFactory() {
		// TODO Auto-generated method stub
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
    @Transactional
	public List<Product> getAllProducts() {
		List<Product> list =this.getSessionFactory().getCurrentSession().createQuery("from Product p").list();
		   return list;
	}
    @Transactional
    public Product getProductWithMaxId() 
	{

		List<Product> l = sessionFactory.getCurrentSession()
				.createQuery("from Product as p where p.Id = ( select max(a.Id) from Product as a )")
				.list();

		if (l.size() > 0) {
			return l.get(0);
		} else {
			return null;
		}
	}

}
