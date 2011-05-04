/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.util.ArrayList;
import java.util.List;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.apache.tapestry5.OptionGroupModel;
import org.apache.tapestry5.OptionModel;
import org.apache.tapestry5.util.AbstractSelectModel;

/**
 *
 * @author MINH
 */
public class CatelogiesSelectModel extends AbstractSelectModel{
    private List<Catelogies> lstCatelogies;

    public CatelogiesSelectModel(List<Catelogies> lstCatelogies) {
        this.lstCatelogies = lstCatelogies;
    }
    @Override
    public List<OptionGroupModel> getOptionGroups() {
        return null;
    }

    @Override
    public List<OptionModel> getOptions() {
        List<OptionModel> list = new ArrayList<OptionModel>();
        for(Catelogies c:lstCatelogies){
            list.add(new CatelogiesOptionModel(c));
        }
        return list;
    }


}
