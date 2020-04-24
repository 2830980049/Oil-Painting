package com.edu.Servlet;

import com.edu.utils.Upload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=utf-8");
        //创建磁盘文件项工厂
        DiskFileItemFactory diskFileItemFactory = new DiskFileItemFactory();
        //创建核心解析类
        ServletFileUpload fileUpload = new ServletFileUpload(diskFileItemFactory);
        //解析请求对象，将请求分成几个部分
        try {
            List<FileItem> list = fileUpload.parseRequest(req);
            //遍历集合获得每个部分对象
            for(FileItem fileItem:list){
                //判断是普通项还是文件上传项
                if(fileItem.isFormField()){
                    //普通型
                    //获得普通型名称：
                    String name = fileItem.getFieldName();
                    //获得普通项的值：
                    String value = fileItem.getString("UTF-8");
                    System.out.println(name+" "+value);
                }
                else{
                    //文件上传项
                    //获得文件名称：
                    String fileName = fileItem.getName();
                    //获得唯一文件名
                    String uuidFileName = Upload.getFileName(fileName);
                    System.out.println(uuidFileName);
                    //获得文件的输入流：
                    InputStream is = fileItem.getInputStream();
                    //需要将文件写入到服务器的某个路径
                    //获取Upload文件夹绝对路径
                    String path = getServletContext().getRealPath("/Upload");
                    System.out.println(path);
                    //创建输出流 与 输入流进行对接
                    //路劲加上文件名
                    OutputStream os = new FileOutputStream(path+"\\"+uuidFileName);
                    int len = 0;
                    byte[] b = new byte[1024];
                    while ((len = is.read(b)) != -1){
                        os.write(b,0,len);
                    }
                    is.close();
                    os.close();
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        }

    }
}
