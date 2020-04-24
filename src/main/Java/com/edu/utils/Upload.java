package com.edu.utils;

import java.util.UUID;

public class Upload {
    public static String getFileName(String fileName){
        //解决文件重名：a.jpg -- 获得后缀名.jsp --生成一段随机字符串将a替换掉
        int index = fileName.lastIndexOf(".");
        String exName = fileName.substring(index); //.jpg
        //生成随机字符串：
        String uuidFileName = UUID.randomUUID().toString().replace("-","")+exName;
        return uuidFileName;
    }

    public static void main(String[] args) {
        System.out.println(Upload.getFileName("a.jpg"));
    }
}

