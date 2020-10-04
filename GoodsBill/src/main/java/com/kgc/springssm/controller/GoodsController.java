package com.kgc.springssm.controller;

import com.kgc.springssm.pojo.Goods;
import com.kgc.springssm.service.GoodsService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-04 15:55
 */
@Controller
public class GoodsController {
    @Resource
    GoodsService goodsService;
    @RequestMapping("/")
    public String toIndex(){
        return "index";
    }
    @RequestMapping("/sel")
    public String sel(Integer goodsdistrict, Model model){
        List<Goods> goods = goodsService.selectAllByGoodsdistrict(goodsdistrict);
       /* session.setAttribute("goods",goods);*/
        model.addAttribute("goods", goods);
        return "main";
    }
    @RequestMapping("/toupd")
    public String toUpd(Integer id, Model model){
        Goods goods = goodsService.selectAllById(id);
        System.out.println(goods.toString());
        model.addAttribute("goods",goods);
        return "upd";
    }
    @RequestMapping("/doupd")
    public  String doupd(Goods goods,HttpSession session){
        int i = goodsService.upd(goods);
        if(i>0){
            session.setAttribute("msg","更新成功！！！！");
            return "redirect:/";
        }else {
            session.setAttribute("msg","修改失败！！！！");
            return "redirect: /toupd";
        }
    }
}
