package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import entities.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.GoodsService;

import java.util.List;

@Controller
@RequestMapping("")
public class GoodsController {

    @Autowired
    GoodsService goodsService;

//    分页显示所有商品信息
    @RequestMapping("listGoods")
    public String listGoods( @RequestParam(value = "page", defaultValue = "1") Integer page,Model model){

        //获取指定页数据，大小为5
        PageHelper.startPage(page, 5);
        //紧跟的第一个select方法被分页
        List<Goods> gs=goodsService.list();
        //使用PageInfo包装数据
         PageInfo pageInfo = new PageInfo(gs,5);
         model.addAttribute("pageInfo", pageInfo);



        return "listGoods";

    }


//    新增商品信息
    @RequestMapping(value = "addGoods",method = RequestMethod.POST,produces = "text/html;charset=utf-8")
    @ResponseBody
//    返回字符串的方法
    public String addGoods(String goodname,int price){
        System.out.println(goodname+";"+price);
        try {
            Goods goods=new Goods();
            goods.setGoodname(goodname);
            goods.setPrice(price);
            goodsService.add(goods);
            return "succe";
        } catch (Exception e) {
            e.printStackTrace();
            return "failer";
        }


    }

//   删除商品信息
    @RequestMapping(value = "deleteGoods",method = RequestMethod.POST,produces="text/html; charset=utf-8")
    @ResponseBody
    public String deleteGoods(int goodsid){

        try {
            System.out.println(goodsid);
            goodsService.delete(goodsid);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "failer";
        }


    }



//    修改商品信息
    @RequestMapping(value = "updateGoods",method = RequestMethod.POST,produces="text/html; charset=utf-8")
    @ResponseBody
    public String updateGoods(int goodsid,String goodname,int price){

        try {
            Goods good3=new Goods();
            good3.setGoodsid(goodsid);
            good3.setGoodname(goodname);
            good3.setPrice(price);
            goodsService.update(good3);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "failer";
        }
    }







}
