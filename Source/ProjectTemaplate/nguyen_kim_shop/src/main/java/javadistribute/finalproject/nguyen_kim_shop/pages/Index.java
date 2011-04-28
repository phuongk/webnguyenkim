package javadistribute.finalproject.nguyen_kim_shop.pages;

import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;

/**
 * Start page of application nguyen_kim_shop.
 */
public class Index {

    public Date getCurrentTime() {
        return new Date();
    }

    public List<Catelogies> getCatelogies1() {
        List<Catelogies> list = null;
        try {
            //List<Catelogies> list = javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO
            CatelogyDAO dao = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
            list = dao.getAll();
            
        } catch (Exception ex) {
            Logger.getLogger(Index.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public String getCatelogyName() {

        Catelogies cate = null;
        try {
            //List<Catelogies> list = javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO
            CatelogyDAO dao = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
             cate = dao.getById(2, true);
        } catch (Exception ex) {
            Logger.getLogger(Index.class.getName()).log(Level.SEVERE, null, ex);
        }
        return cate.getCatelogyName();
    }
}
