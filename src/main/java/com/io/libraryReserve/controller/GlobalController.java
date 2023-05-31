package com.io.libraryReserve.controller;

import com.io.libraryReserve.utils.DateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class GlobalController {

    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("today", DateUtil.getToday());
        model.addAttribute("tomorrow",DateUtil.getTomorrow());
        return "menu";
    }

    @RequestMapping("/reserve")
    public String reserve(String rq,String sjdId) {
        return "redirect:http://jxut.educationgroup.cn/tsg/kzwWx/save?" +
                "rq="+rq+"&" +//日期
                "sjdId="+sjdId+"&" +//时间id
                "zwId=CB877D7A0B625565E0530100007F162F";//277号座位id
    }
}
