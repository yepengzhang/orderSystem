package com.zyx.order.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zyx.order.pojo.Order;
import com.zyx.order.service.OrderItemService;
import com.zyx.order.service.OrderService;
import com.zyx.order.util.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * 订单模块controller
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @Resource
    OrderService orderService;
    @Resource
    OrderItemService orderItemService;

    /**
     * 所有订单
     * @param model
     * @param page
     * @return
     */
    @RequestMapping("/list")
    public String list(Model model, Page page){
        PageHelper.offsetPage(page.getStart(),page.getCount());

        List<Order> os= orderService.list();

        int total = (int) new PageInfo<>(os).getTotal();
        page.setTotal(total);
        //为订单添加订单项数据
        orderItemService.fill(os);

        model.addAttribute("os", os);
        model.addAttribute("page", page);
        model.addAttribute("totals", total);

        return "ordermodule/order-list";
    }

    /**
     * 订单发货
     * @param o
     * @return
     */
    @RequestMapping("/orderDelivery")
    public String delivery(Order o){
        o.setStatus(2);
        orderService.update(o);
        return "redirect:list";
    }

    /**
     * 查看当前订单的订单项
     * @param oid
     * @param model
     * @return
     */
    @RequestMapping("/seeOrderItem")
    public String seeOrderItem(int oid,Model model){
        Order o = orderService.get(oid);
        orderItemService.fill(o);
        model.addAttribute("orderItems",o.getOrderItems());
        model.addAttribute("total",o.getOrderItems().size());
        model.addAttribute("totalPrice",o.getTotal());
        return "ordermodule/orderItem-list";
    }

}
