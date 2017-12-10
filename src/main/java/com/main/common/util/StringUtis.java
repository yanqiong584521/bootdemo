package com.main.common.util;

/**
 * Created by zhangwenbo on 2017/12/10.
 */
public class StringUtis {

    public static boolean isNotBlank(String s){

        boolean flag = false;
        if (s!=null && "".equals(s)) {
            flag = true;
        }
        return flag;
    }
}
