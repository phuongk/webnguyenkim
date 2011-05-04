/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.jboss.weld.logging.Category;

/**
 *
 * @author MINH
 */
public class CatelogyDAO extends BaseDAO<Catelogies> {

    public List getCatelogiesSortNameAsc() {
        try {
            String[] sort = new String[]{"catelogyName"};
            List<Catelogies> list = getBySQLQuery(sort, 0);
            return list;
        } catch (Exception ex) {
            Logger.getLogger(Category.class.getName()).log(Level.SEVERE, null, ex);
            return null;

        }
    }

    public List getCatelogiesSortNameDesc() {
        try {
            String[] sort = new String[]{"catelogyName desc"};
            List<Catelogies> list = getBySQLQuery(sort, 0);
            return list;
        } catch (Exception ex) {
            Logger.getLogger(Category.class.getName()).log(Level.SEVERE, null, ex);
            return null;

        }
    }

    public int heightTree(Catelogies cate) {

        if (cate == null) {
            return 0;
        }
        int max = 0;
        Iterator<Catelogies> it = cate.getCatelogieses().iterator();
        while (it.hasNext()) {
            //Catelogies tmp = it.next();
            int height = heightTree(it.next());
            if (height > max) {
                max = height;
            }

        }

        return max + 1;
    }
    public StringBuilder htmlMenuMutilLevel = new StringBuilder();

    public Iterator<Catelogies> getFirstLevel() {
        Iterator<Catelogies> it = null;
        String hql = "from Catelogies where parentCatelogy is null";
        it = getSession().createQuery(hql).iterate();
        return it;
    }
    public List<Catelogies> getFirstLevelToList(){
        List<Catelogies> lst = null;
        String hql = "from Catelogies where parentCatelogy is null";
        lst = getSession().createQuery(hql).list();
        return lst;

    }
    //boolean flag = true;
    public void browseTree(Catelogies cate) {
        if (cate == null) {
            return;
        }
        //begin
        //if (!cate.getCatelogyName().isEmpty()) {
            htmlMenuMutilLevel.append("<ul>\n");
        //}


        Iterator<Catelogies> it = cate.getCatelogieses().iterator();
        while (it.hasNext()) {
            Catelogies c = it.next();
            if (c.getCatelogieses().isEmpty()) {
                htmlMenuMutilLevel.append("<li>\n");
                htmlMenuMutilLevel.append("<a href=\"#\">");
                htmlMenuMutilLevel.append(c.getCatelogyName());
                htmlMenuMutilLevel.append("</a>\n");
                htmlMenuMutilLevel.append("</li>\n");
                htmlMenuMutilLevel.append("<li class=\"h-sep\">&nbsp;</li>\n");

            } else {
                htmlMenuMutilLevel.append("<li class=\"dir\">\n");
                htmlMenuMutilLevel.append("<a href=\"#\">");
                htmlMenuMutilLevel.append(c.getCatelogyName());
                htmlMenuMutilLevel.append("</a>\n");
            }
            browseTree(c);

        }
         htmlMenuMutilLevel.append("</ul>\n");
        if (!cate.getCatelogieses().isEmpty()) {
           
            htmlMenuMutilLevel.append("</li>\n");
            htmlMenuMutilLevel.append("<li class=\"h-sep\">&nbsp;</li>\n");
        }


    }

    public ListIterator<Catelogies> getIteratorCatelogies() {
        ListIterator<Catelogies> lt = null;
        try {
            //
            lt = getAll().listIterator();

        } catch (Exception ex) {
            Logger.getLogger(CatelogyDAO.class.getName()).log(Level.SEVERE, null, ex);

        }
        return lt;
    }
}
