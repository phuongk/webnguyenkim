/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javadistribute.finalproject.nguyen_kim_shop.components;

import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogiesSelectModel;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogiesEncoder;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import org.apache.tapestry5.SelectModel;
import org.apache.tapestry5.ValueEncoder;
import org.apache.tapestry5.annotations.Persist;

/**
 *
 * @author MINH
 */
public class MenuBar {

    private CatelogyDAO catelogyDAO = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");

    public List<Catelogies> getAllCatelogies() {
        // catelogyDAO = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
        List<Catelogies> list = null;
        try {
            list = catelogyDAO.getFirstLevelToList();
        } catch (Exception ex) {
            Logger.getLogger(MasterPage.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;

    }

    public SelectModel getCatelogiesModel() {
        //List<Catelogies> list = getAllCatelogies();
        return new CatelogiesSelectModel(getAllCatelogies());
        //return  new CatelogiesSelectModel(null);

    }

    public ValueEncoder<Catelogies> getCatelogiesEncoder() {
        return new CatelogiesEncoder();
    }
    @Persist
    private Catelogies selectedCatelogy;

    public void setSelectedCatelogy(Catelogies selectedCatelogy) {
        this.selectedCatelogy = selectedCatelogy;
    }

    public Catelogies getSelectedCatelogy() {
        return selectedCatelogy;
    }

    public String getSelectedCatelogyName() {
        if (selectedCatelogy == null) {
            return "All";
        }
    
        return selectedCatelogy.getCatelogyName();
    }
}
