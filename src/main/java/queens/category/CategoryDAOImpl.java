package queens.category;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

@Repository
@EnableTransactionManagement
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public void insert(Category c) {
		sessionFactory.getCurrentSession().save(c);
	}

	@Transactional
	public void update(Category c) {
		sessionFactory.getCurrentSession().update(c);
	}

	@Transactional
	public void delete(int cid) {
		System.out.println(cid);
		sessionFactory.getCurrentSession().createQuery("delete from Category as c where c.Id = :id")
		.setInteger("id", cid).executeUpdate();

		
	}
	@Transactional
	public Category getCategory(int cid) {
		List<Category> list=sessionFactory.getCurrentSession().createQuery("from Category where Id=:id")
		.setInteger("id", cid).list();
		return list.get(0);
	}
	
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Category> getAllCategories() 
	{
		return sessionFactory.getCurrentSession().createQuery("from Category c").list();
		
	}

}
 	 	