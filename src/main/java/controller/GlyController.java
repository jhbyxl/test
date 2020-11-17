package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import entities.Gly;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.GlyService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("")
public class GlyController {

    @Autowired
    private GlyService glyService;

//    管理员登录
    @RequestMapping(value = "/glylogin",method = RequestMethod.POST)
    public String login(HttpSession session, String uname, String upwd){
        System.out.println("controller");
        //获取用户的请求，再实现业务逻辑
        Gly g=new Gly();
        g.setUname(uname);
        g.setUpwd(upwd);
        Gly gly=null;

        try {
            gly=glyService.login(g);
            if(gly!=null){
                System.out.println(gly.getUid()+":"+gly.getUname()+"登录成功！");
                session.setAttribute("gly",gly);
                return "redirect:/listGoods";
            }else{
                System.out.println(gly.getUid()+":"+gly.getUname()+"登录失败！");
                session.setAttribute("glyerror", "提示信息：用户名或密码错误！");
                session.setMaxInactiveInterval(1);   //设提示信息：置该消息存在一秒，显示后下次访问页面即消失
                return "redirect:/glylogin.jsp";
            }
        }catch (Exception e){
            System.out.println("登录失败！");
            System.out.println(2);
            session.setAttribute("glyerror", "提示信息：用户名或密码错误！");
            session.setMaxInactiveInterval(1);   //设置该消息存在一秒，显示后下次访问页面即消失
            return "redirect:/glylogin.jsp";
        }

    }

//    退出管理员登录
    @RequestMapping(value = "/glyLogout")
    public String adminLogout(HttpSession session) {
        Gly gly = (Gly) session.getAttribute("gly");  //从sesion中获取gly对象
        if(gly !=null) {
            session.removeAttribute("gly");  //移除session域中保留的值
            return "redirect:/glylogin.jsp";   //重定向到登录界面
        }
        return "redirect:/glylogin.jsp";
    }

//   去管理员注册页面
    @RequestMapping(value = "/toGlyRegister")
    public String toRegister() {
        return "glyRegister";
    }

//    注册管理员
    @RequestMapping(value = "/glyRegister")
    public String updateAdmin(Gly gly) {

        System.out.println(6);
        glyService.insertGly(gly);
        return "redirect:/glylogin.jsp";


    }

//    检查管理员用户名是否已存在
    @RequestMapping(value = "/checkGlyUname")
    @ResponseBody
    public Gly checkAdminNumber(String uname) {
        Gly gly=glyService.selectGlyByUname(uname);
        System.out.println(gly);
        return gly;
    }

//    分页查询所有管理员信息
    @RequestMapping("listGly")
    public String listGly(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model){

        //获取指定页数据，大小为5
        PageHelper.startPage(page, 5);
        //紧跟的第一个select方法被分页
        List<Gly> gs=glyService.list();
        //使用PageInfo包装数据
        PageInfo pageInfo2 = new PageInfo(gs,5);
        model.addAttribute("pageInfo2", pageInfo2);


        return "listGly";

    }



//  删除管理员信息
    @RequestMapping(value = "deleteGly",method = RequestMethod.POST,produces="text/html; charset=utf-8")
    @ResponseBody
    public String  deleteGly(int uid){

        try {
            System.out.println(uid);
            glyService.delete(uid);
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "failer";
        }


    }


    //    返回视图的方法

    @RequestMapping("editGly")
    public ModelAndView editGoods(int uid){
        Gly gly=glyService.getGlyById(uid);
        ModelAndView mav=new ModelAndView();
        mav.addObject("gly",gly);
        mav.setViewName("editGly");
        return mav;
    }



    @RequestMapping("updateGly")
    public String updateGly(Gly gly){

        glyService.updateGly(gly);
        return "redirect:/listGly";
    }







}
