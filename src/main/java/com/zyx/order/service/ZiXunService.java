package com.zyx.order.service;

import com.zyx.order.pojo.ZiXun;

import java.util.List;

/**
 * 资讯
 */
public interface ZiXunService extends CrudService<ZiXun> {

    /**
     * 资讯审核通过
     * @param zid
     */
    void shenhe(int zid);

    /**
     * 连带未审核的资讯
     * @return
     */
    List<ZiXun> list1();

}
