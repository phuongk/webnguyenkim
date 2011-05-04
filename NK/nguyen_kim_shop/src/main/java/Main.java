
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.components.MenuBar;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;

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

            //CatelogyDAO dao = (CatelogyDAO) SpringHibernateUtil.createDAO("catelogy");
            MenuBar mb = new MenuBar();
            List<Catelogies> list = mb.getAllCatelogies();
            for(int i = 0; i < list.size();i++){
                System.out.println(list.get(i).getCatelogyName()+"\n");
            }


        } catch (Exception ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }


    }
}
