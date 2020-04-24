package com.edu.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Check_Code_Check_Servlet")
public class Check_Code_Check_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //完成验证码校验
        //获得session保存的验证码信息
        String code = (String)req.getSession().getAttribute("checkCode");
        //获得表单提交验证码信息
        String code2 = req.getParameter("checkCode");
        //忽略大小写
        System.out.println(code + " " + code2);
        if(code2.equalsIgnoreCase(code)){
            req.getRequestDispatcher("/index.jsp").forward(req,resp);
        }
        else{
            req.setAttribute("msg","验证码不正确！");
            req.getRequestDispatcher("checkCode_frame.jsp").forward(req,resp);
            return;
        }
    }

}
