
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.ProductDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import javadistribute.finalproject.nguyen_kim_shop.models.Products;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author MINH
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        try {
            // TODO code application logic here
            //ApplicationContext context = new ClassPathXmlApplicationContext("beans.cfg.xml");
            //BeanFactory beanFactory = (BeanFactory) context;
            //CatelogyDAO dao = (CatelogyDAO) beanFactory.getBean("catelogy");
            CatelogyDAO dao = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
            List<Catelogies> lst = dao.getCatelogies();
            Catelogies cate = lst.get(0);
            Iterator<Catelogies> it = cate.getCatelogieses().iterator();

            //  ProductDAO dao = (ProductDAO) beanFactory.getBean("product");
            //List<Products> lst = dao.getAll();
            int a = 0;

        } catch (Exception ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }


    }
}
