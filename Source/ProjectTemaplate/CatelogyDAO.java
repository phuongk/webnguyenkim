/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.jboss.weld.logging.Category;

/**
 *
 * @author MINH
 */
public class CatelogyDAO extends BaseDAO<Catelogies> {
   
    public List getCatelogies() {
        try {
            String[] sort = new String[]{"catelogyName"};
            List<Catelogies> list = getBySQLQuery(sort, 0);
            return list;
        } catch (Exception ex) {
            Logger.getLogger(Category.class.getName()).log(Level.SEVERE, null, ex);
            return null;

        }
    }
    
}
