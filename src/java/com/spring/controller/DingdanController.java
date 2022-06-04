package com.spring.controller;

import com.jntoo.db.*;
import com.jntoo.db.utils.*;
import com.spring.dao.*;
import com.spring.entity.*;
import com.spring.service.*;
import com.spring.util.*;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单 模块访问入口
 */
@Controller
public class DingdanController extends BaseController {

    @Autowired
    private DingdanMapper dao;

    @Autowired
    private DingdanService service;

    @Autowired
    private YuyueService serviceRead;

    /**
     *  后台列表页
     *
     */
    @RequestMapping("/dingdan_list")
    public String list() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类
        String where = " 1=1 "; // 创建初始条件为：1=1
        where += getWhere(); // 从方法中获取url 上的参数，并写成 sql条件语句
        example.setWhere(where); // 将条件写进sql里面
        example.setOrder(order + " " + sort); // 设置查询的排序情况

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 获取前台提交的URL参数 page  如果没有则设置为1
        page = Math.max(1, page); // 取两个数的最大值，防止page 小于1
        List<Dingdan> list = service.selectPage(example, page, 12); // 获取当前页的行数
        // 将列表写给界面使用
        assign("list", list);
        assign("orderby", order); // 把当前排序结果写进前台
        assign("sort", sort); // 把当前排序结果写进前台
        assign("where", where); // 把当前条件写给前台
        return "dingdan_list"; // 使用视图文件：WebRoot\dingdan_list.jsp
    }

    /**
     *  获取前台搜索框填写的内容,并组成where 语句
     */
    public String getWhere() {
        String where = " ";
        // 判断URL 参数yuyueid是否大于0
        if (Request.getInt("yuyueid") > 0) {
            // 大于0 则写入条件
            where += " AND yuyueid='" + Request.getInt("yuyueid") + "' ";
        }
        // 以下是判断搜索框中是否有输入内容，判断是否前台是否有填写相关条件，符合则写入sql搜索语句
        if (!Request.get("bianhao").equals("")) {
            where += " AND bianhao LIKE '%" + Request.get("bianhao") + "%' ";
        }
        if (!Request.get("huowu").equals("")) {
            where += " AND huowu LIKE '%" + Request.get("huowu") + "%' ";
        }
        if (!Request.get("jine_start").equals("")) {
            where += " AND jine >='" + Request.get("jine_start") + "' ";
        }
        if (!Request.get("jine_end").equals("")) {
            where += " AND jine <= '" + Request.get("jine_end") + "' ";
        }
        if (!Request.get("quyu").equals("")) {
            where += " AND quyu ='" + Request.get("quyu") + "' ";
        }
        if (!Request.get("mudidi").equals("")) {
            where += " AND mudidi LIKE '%" + Request.get("mudidi") + "%' ";
        }
        if (!Request.get("yunshu").equals("")) {
            where += " AND yunshu ='" + Request.get("yunshu") + "' ";
        }
        if (!Request.get("beizhu").equals("")) {
            where += " AND beizhu LIKE '%" + Request.get("beizhu") + "%' ";
        }
        return where;
    }

    /**
     * 添加人列表
     */
    @RequestMapping("/dingdan_list_tianjiaren")
    public String listtianjiaren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：添加人=当前登录用户
        String where = " tianjiaren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Dingdan> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "dingdan_list_tianjiaren";
    }

    /**
     * 操作人列表
     */
    @RequestMapping("/dingdan_list_caozuoren")
    public String listcaozuoren() {
        // 检测是否有登录，没登录则跳转到登录页面
        if (!checkLogin()) {
            return showError("尚未登录", "./login.do");
        }

        String order = Request.get("order", "id"); // 获取浏览器上地址栏参数 order  如果没有则设置为id
        String sort = Request.get("sort", "desc"); // 获取浏览器上地址栏参数 sort  如果没有则设置为desc

        SelectExample example = new SelectExample(); //  创建一个搜索类

        // 初始化一个条件，条件为：操作人=当前登录用户
        String where = " caozuoren='" + session.getAttribute("username") + "' ";

        where += getWhere(); // 获取从前台提交的搜索内容
        example.setWhere(where); // 设置条件
        example.setOrder(order + " " + sort); // 设置排序信息

        int page = request.getParameter("page") == null ? 1 : Integer.valueOf(request.getParameter("page")); // 注释同list
        page = Math.max(1, page); // 注释同list

        List<Dingdan> list = service.selectPage(example, page, 12);

        request.setAttribute("list", list);
        assign("orderby", order);
        assign("sort", sort);
        assign("where", where);
        return "dingdan_list_caozuoren";
    }

    @RequestMapping("/dingdan_add")
    public String add() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id"); // 根据id 获取 预约模块中的数据
        Yuyue readMap = serviceRead.find(id);
        // 将数据行写入给前台jsp页面
        request.setAttribute("readMap", readMap);
        return "dingdan_add";
    }

    @RequestMapping("/dingdan_updt")
    public String updt() {
        int id = Request.getInt("id");
        // 获取行数据，并赋值给前台jsp页面
        Dingdan mmm = service.find(id);
        request.setAttribute("mmm", mmm);
        request.setAttribute("updtself", 0);
        return "dingdan_updt";
    }

    /**
     * 添加内容
     * @return
     */
    @RequestMapping("/dingdaninsert")
    public String insert() {
        String tmp = "";
        Dingdan post = new Dingdan(); // 创建实体类
        // 设置前台提交上来的数据到实体类中
        post.setYuyueid(Request.getInt("yuyueid"));

        post.setBianhao(Request.get("bianhao"));

        post.setHuowu(Request.get("huowu"));

        post.setJine(Request.getDouble("jine"));

        post.setQuyu(Request.get("quyu"));

        post.setMudidi(Request.get("mudidi"));

        post.setFahuodi(Request.get("fahuodi"));

        post.setFahuorendianhua(Request.get("fahuorendianhua"));

        post.setFahuoren(Request.get("fahuoren"));

        post.setShouhuorendianhua(Request.get("shouhuorendianhua"));

        post.setShouhuoren(Request.get("shouhuoren"));

        post.setTianjiaren(Request.get("tianjiaren"));

        post.setYunshu(Request.get("yunshu"));

        post.setBeizhu(Request.get("beizhu"));

        post.setCaozuoren(Request.get("caozuoren"));

        post.setYuyueid(Request.getInt("yuyueid"));

        service.insert(post); // 插入数据
        int charuid = post.getId().intValue();

        return showSuccess("保存成功", Request.get("referer").equals("") ? request.getHeader("referer") : Request.get("referer"));
    }

    /**
     * 更新内容
     * @return
     */
    @RequestMapping("/dingdanupdate")
    public String update() {
        // 创建实体类
        Dingdan post = new Dingdan();
        // 将前台表单数据填充到实体类
        if (!Request.get("yuyueid").equals("")) post.setYuyueid(Request.getInt("yuyueid"));
        if (!Request.get("bianhao").equals("")) post.setBianhao(Request.get("bianhao"));
        if (!Request.get("huowu").equals("")) post.setHuowu(Request.get("huowu"));
        if (!Request.get("jine").equals("")) post.setJine(Request.getDouble("jine"));
        if (!Request.get("quyu").equals("")) post.setQuyu(Request.get("quyu"));
        if (!Request.get("mudidi").equals("")) post.setMudidi(Request.get("mudidi"));
        if (!Request.get("fahuodi").equals("")) post.setFahuodi(Request.get("fahuodi"));
        if (!Request.get("fahuorendianhua").equals("")) post.setFahuorendianhua(Request.get("fahuorendianhua"));
        if (!Request.get("fahuoren").equals("")) post.setFahuoren(Request.get("fahuoren"));
        if (!Request.get("shouhuorendianhua").equals("")) post.setShouhuorendianhua(Request.get("shouhuorendianhua"));
        if (!Request.get("shouhuoren").equals("")) post.setShouhuoren(Request.get("shouhuoren"));
        if (!Request.get("tianjiaren").equals("")) post.setTianjiaren(Request.get("tianjiaren"));
        if (!Request.get("yunshu").equals("")) post.setYunshu(Request.get("yunshu"));
        if (!Request.get("beizhu").equals("")) post.setBeizhu(Request.get("beizhu"));
        if (!Request.get("caozuoren").equals("")) post.setCaozuoren(Request.get("caozuoren"));

        post.setId(Request.getInt("id"));
        service.update(post); // 更新数据
        int charuid = post.getId().intValue();
        return showSuccess("保存成功", Request.get("referer")); // 弹出保存成功，并跳转到前台提交的 referer 页面
    }

    /**
     *  后台详情
     */
    @RequestMapping("/dingdan_detail")
    public String detail() {
        if (!checkLogin()) {
            return showError("尚未登录", "./");
        }
        int id = Request.getInt("id");
        Dingdan map = service.find(id); // 根据前台url 参数中的id获取行数据
        request.setAttribute("map", map); // 把数据写到前台
        return "dingdan_detail"; // 详情页面：WebRoot\dingdan_detail.jsp
    }

    /**
     *  删除
     */
    @RequestMapping("/dingdan_delete")
    public String delete() {
        if (!checkLogin()) {
            return showError("尚未登录");
        }
        int id = Request.getInt("id"); // 根据id 删除某行数据
        Map map = Query.make("dingdan").find(id);

        service.delete(id); // 根据id 删除某行数据
        return showSuccess("删除成功", request.getHeader("referer")); //弹出删除成功，并跳回上一页
    }
}
