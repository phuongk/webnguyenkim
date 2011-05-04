package javadistribute.finalproject.nguyen_kim_shop.components;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogiesEncoder;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogiesSelectModel;
import javadistribute.finalproject.nguyen_kim_shop.dao.CatelogyDAO;
import javadistribute.finalproject.nguyen_kim_shop.dao.SpringHibernateUtil;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.apache.tapestry5.*;
import org.apache.tapestry5.annotations.*;
import org.apache.tapestry5.ioc.annotations.*;
import org.apache.tapestry5.BindingConstants;

/**
 * Layout component for pages of application nguyen_kim_shop.
 */
@IncludeStylesheet("context:layout/layout.css")
public class Layout
{
    /** The page title, for the <title> element and the <h1> element. */
    @Property
    @Parameter(required = true, defaultPrefix = BindingConstants.LITERAL)
    private String title;

    @Property
    private String pageName;

    @Property
    @Parameter(defaultPrefix = BindingConstants.LITERAL)
    private String sidebarTitle;

    @Property
    @Parameter(defaultPrefix = BindingConstants.LITERAL)
    private Block sidebar;

    @Inject
    private ComponentResources resources;

    public String getClassForPageName()
    {
      return resources.getPageName().equalsIgnoreCase(pageName)
             ? "current_page_item"
             : null;
    }

    public String[] getPageNames()
    {
      return new String[] { "Index", "About", "Contact" };
    }
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
            return "Tất cả";
        }
        //MarkupWriter writer;

        return selectedCatelogy.getCatelogyName();
    }
}
