/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.apache.tapestry5.ValueEncoder;

/**
 *
 * @author MINH
 */
public class CatelogiesEncoder implements ValueEncoder<Catelogies>{

    private CatelogyDAO catelogyDAO;// = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");

    public CatelogiesEncoder(CatelogyDAO catelogyDAO) {
        this.catelogyDAO = catelogyDAO;
    }
    public CatelogiesEncoder(){
    catelogyDAO = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
    }
    @Override
    public String toClient(Catelogies v) {
        return v.getCatelogyId().toString();
    }

    @Override
    public Catelogies toValue(String string) {
        Catelogies cate = null;
        try {
            //catelogyDAO.getFirstLevel();
            cate = catelogyDAO.getById(Integer.parseInt(string), true);
        } catch (Exception ex) {
            Logger.getLogger(CatelogiesEncoder.class.getName()).log(Level.SEVERE, null, ex);
        }
        return  cate;
    }


}
