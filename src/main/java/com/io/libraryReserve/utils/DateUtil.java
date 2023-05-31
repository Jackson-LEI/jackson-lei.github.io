package com.io.libraryReserve.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String getToday(){
        Date today = new Date();
        return new SimpleDateFormat("yyyy-MM-dd").format(today);
    }

    public static String getTomorrow(){
        Date tomorrow = new Date();
        tomorrow.setTime(new Date().getTime()+1000*60*60*24);
        return new SimpleDateFormat("yyyy-MM-dd").format(tomorrow);
    }
}
