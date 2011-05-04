/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package javadistribute.finalproject.nguyen_kim_shop.dao;

import java.util.Map;
import javadistribute.finalproject.nguyen_kim_shop.models.Catelogies;
import org.apache.tapestry5.OptionModel;

/**
 *
 * @author MINH
 */
public class CatelogiesOptionModel implements OptionModel{
    private Catelogies catelogy;

    public CatelogiesOptionModel(Catelogies catelogies) {
        this.catelogy = catelogies;
    }
    

    @Override
    public String getLabel() {
        return catelogy.getCatelogyName();
    }

    @Override
    public boolean isDisabled() {
        return false;
    }

    @Override
    public Map<String, String> getAttributes() {
        return null;
    }

    @Override
    public Object getValue() {
        return catelogy;
    }


}
