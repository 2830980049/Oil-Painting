package com.edu.Listener;

import com.edu.domain.User;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.ArrayList;
import java.util.List;
public class InitServletConntexxtListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("项目中数据初始化...");
        //创建一个用于保存用户信息的LIST集合
        List<User> userList = new ArrayList<User>();
        //将List集合存入到ServletContext域中
        sce.getServletContext().setAttribute("userList",userList);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {

    }
}
