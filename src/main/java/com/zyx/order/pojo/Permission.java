package com.zyx.order.pojo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Permission implements Serializable {
    private Long id;

    private String name;

    private String desc_;

    private String url;
}