/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package javadistribute.finalproject.nguyen_kim_shop.dao;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 *
 * @author MINH
 */
public  class SpringHibernateUtil {
   private static ApplicationContext context = new ClassPathXmlApplicationContext("beans.cfg.xml");
    private static  BeanFactory beanFactory = (BeanFactory) context;
    public static Object createDAO(String name){

        return beanFactory.getBean(name);
    }


}
