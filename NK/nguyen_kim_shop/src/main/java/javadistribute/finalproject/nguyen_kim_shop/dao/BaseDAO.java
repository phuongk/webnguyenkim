/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.*;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 *
 * @author MINH
 */
public abstract class BaseDAO<T> extends HibernateDaoSupport {

    private Class<T> persistentClass;
    protected Order order;
    protected Criteria criteria;
    protected Restrictions restrictions;
    //ApplicationContext context = new ClassPathXmlApplicationContext("beans.cfg.xml");
    //BeanFactory beanFactory = (BeanFactory) context;

    public BaseDAO() {
        super();
        this.persistentClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
    }
    

    public Class<T> getPersistentClass() {
        return this.persistentClass;
    }

    /**
     * Add new entity and commit it to database
     * @param entity
     * @throws Exception
     */
    public void insert(T entity) throws Exception {
        getHibernateTemplate().save(entity);

    }

    /**
     * Update or Add a entity and commit it to Database
     * @param entity
     * @throws Exception
     */
    public void update(T entity) throws Exception {
        getHibernateTemplate().saveOrUpdate(entity);
    }

    /**
     * Delete a entity and commit action to Database
     * @param entity
     * @throws Exception
     */
    public void delete(T entity) throws Exception {
        getHibernateTemplate().delete(entity);
    }

    public void deleteAll() throws Exception {

        List<T> list = getAll();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            getHibernateTemplate().delete(it.next());
        }

    }

    /**
     * Get all rows in table of entity
     * @return
     * @throws Exception
     */
    public List<T> getAll() throws Exception {
        List<T> list = null;

        list = getSession().createCriteria(this.persistentClass).list();

        return list;
    }

    /**
     * Get a entity by Id
     * @param id of entity
     * @param locked lock entity
     * @return a entity
     * @throws Exception
     */
    @SuppressWarnings("static-access")
    public T getById(int id, boolean locked) throws Exception {
        T entity;

        if (locked) {
            entity = (T) getSession().load(getPersistentClass(), id, LockMode.UPGRADE);
        } else {
            entity = (T) getSession().load(getPersistentClass(), id);
        }

        return entity;
    }

    /**
     *
     * @param id
     * @return true if exists
     */
    @SuppressWarnings("unchecked")
    public boolean isExists(int id) {
        return false;
    }

    /**
     * Execute a sql non query
     * @param sql non query
     * @return number of row effected
     * @throws Exception
     */
    public int excecuteSQl(String sql) throws Exception {
        int i = 0;

        i = getSession().createSQLQuery(sql).executeUpdate();

        return i;
    }

    public List excecuteSQlQuery(String sql) throws Exception {
        List list = null;

        Query query = getSession().createQuery(sql);
        list = query.list();

        return list;
    }

    /**
     * Get List of entity follow order and max result
     * @param orders list order follow format: "ColumnName desc" or "ColumnName"
     * @param maxResult max of number rows, set 0 for get all
     * @return list of entity
     * @throws Exception
     */
    @SuppressWarnings("static-access")
    public List<T> getBySQLQuery(String[] orders, int maxResult) throws Exception {
        List list = null;
        String[] temp;

        // create criteria from persitent class
        criteria = getSession().createCriteria(getPersistentClass());

        // add order list into criteria
        if (orders != null) {
            for (int i = 0; i < orders.length; i++) {
                if (orders[i].contains(" ")) {
                    temp = orders[i].split(" ");
                    if (temp[1].equalsIgnoreCase("desc")) {
                        criteria.addOrder(order.desc(temp[0]));
                    }
                } else {
                    criteria.addOrder(order.asc(orders[i]));
                }
            }
        }

        // set max result if it greater -1
        if (maxResult > 0) {
            criteria.setMaxResults(maxResult);
        }

        list = criteria.list();
        //criteria = null;

        return list;
    }

    /**
     * Get List of entity follow order and max result and where clause
     * @param where where clause, example: id = 2 and col like 'a%'
     * @param orders list order follow format: "ColumnName desc" or "ColumnName"
     * @param maxResult max of number rows, set 0 for get all
     * @return list of entity
     * @throws Exception
     */
    @SuppressWarnings("static-access")
    public List<T> getBySQLQuery(String where, String[] orders, int maxResult) throws Exception {
        List<T> list = null;
        String[] temp;


        // create criteria from persitent class
        criteria = getSession().createCriteria(getPersistentClass());

        // add where clause
        if (where != null && !where.equals("")) {
            criteria.add(restrictions.sqlRestriction(where));
        }

        // add order list into criteria
        if (orders != null) {
            for (int i = 0; i < orders.length; i++) {
                if (orders[i].contains(" ")) {
                    temp = orders[i].split(" ");
                    if (temp[1].equalsIgnoreCase("desc")) {
                        criteria.addOrder(order.desc(temp[0]));
                    }
                } else {
                    criteria.addOrder(order.asc(orders[i]));
                }
            }
        }

        // set max result if it greater -1
        if (maxResult > 0) {
            criteria.setMaxResults(maxResult);
        }

        list = criteria.list();
        //criteria = null;

        return list;
    }

    /**
     * Get list entity from start row posion, condition, order and max result
     * @param where this is where clause of Sql query, example: column = '123' and column2 like 'df%'
     * @param orders this is order by clause of sql query
     * @param startRowPosition start row postion, set 0 to disable
     * @param maxResult max result of row, set 0 to disable
     * @return List of entity
     * @throws Exception
     */
    @SuppressWarnings("static-access")
    public List<T> getBySQLQuery(String where, String[] orders, int startRowPosition, int maxResult) throws Exception {
        List<T> list = null;

        // get all no set maxresult
        list = getBySQLQuery(where, orders, 0);


        if (startRowPosition < 1) {
            startRowPosition = 1;
        }

        if (maxResult < 1) {
            maxResult = list.size();
        }

        // get all row from start position
        List<T> listTemp = new ArrayList();
        maxResult += startRowPosition;

        for (int i = startRowPosition; i < list.size() && i < maxResult; i++) {
            listTemp.add(list.get(i));
        }

        return listTemp;
    }
}
