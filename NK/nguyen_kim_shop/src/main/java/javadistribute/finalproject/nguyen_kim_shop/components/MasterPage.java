/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javadistribute.finalproject.nguyen_kim_shop.components;

import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import java.util.Iterator;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import org.apache.tapestry5.BindingConstants;
import org.apache.tapestry5.annotations.Parameter;
import org.apache.tapestry5.annotations.Persist;
import org.apache.tapestry5.annotations.Property;

/**
 *
 * @author MINH
 */
public class MasterPage {

    @Persist
    private String menuMultiLevel;

    private CatelogyDAO catelogyDAO = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
    public void getMenuMultiLevel() {
        //CatelogyDAO dao = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
        StringBuilder htmlMenu = new StringBuilder();
        Iterator<Catelogies> lt = catelogyDAO.getFirstLevel();
        while (lt.hasNext()) {
            Catelogies cate = lt.next();
            htmlMenu.append("<li class=\"first-level\">\n");
            htmlMenu.append("<span>\n");
            htmlMenu.append("<a href=\"#\">");
            htmlMenu.append(cate.getCatelogyName());
            htmlMenu.append("</a>\n");
            htmlMenu.append("</span>\n");

            catelogyDAO.browseTree(cate);

            htmlMenu.append(catelogyDAO.htmlMenuMutilLevel);


            catelogyDAO.htmlMenuMutilLevel = new StringBuilder();

        }
        menuMultiLevel = htmlMenu.toString();

    }



    
    @Property
    @Parameter(required = true, defaultPrefix = BindingConstants.LITERAL)
    private String title;


}
