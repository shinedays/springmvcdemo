package com.shinedays.controller;

import com.shinedays.model.BlogEntity;
import com.shinedays.repository.BlogReposity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by bupt on 3/14/17.
 */
public class BlogController {

    @Autowired
    BlogReposity blogReposity;

    @RequestMapping(value = "/admin/blogs",method = RequestMethod.GET)
    public String ShowBlogs(ModelMap modelMap){
        List<BlogEntity> blogEntityList = blogReposity.findAll();
        modelMap.addAttribute("blogList",blogEntityList);
        return "admin/blogs";
    }
}

