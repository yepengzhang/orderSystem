<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhaoyingxin
  Date: 2021/10/5
  Time: 18:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@include file="../../include/publicMeta.jsp" %>

<article class="cl pd-20">
    <form action="${pageContext.request.contextPath}/config/addUser" method="post" class="form form-horizontal"
          id="form-admin-add" target="_parent">
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>管理员：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <label for="name"></label><input type="text" class="input-text" value="" placeholder="" id="name"
                                                 name="name">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>初始密码：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <label for="password"></label><input type="password" class="input-text" autocomplete="off" value=""
                                                     placeholder="初始密码" id="password"
                                                     name="password">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3">角色：</label>
            <div class="formControls col-xs-8 col-sm-9"> <span class="select-box" style="width:150px;">
				<label>
<select class="select" name="roleIds" size="1">
<c:forEach items="${rolelist}" var="role">
    <option value="${role.id}">${role.name}</option>
</c:forEach>
</select>
</label>
				</span></div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>地址：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <label for="address"></label><input type="text" class="input-text" autocomplete="off" value=""
                                                    placeholder="联系地址" id="address"
                                                    name="address">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>联系方式：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <label for="phone"></label><input type="text" class="input-text" autocomplete="off" value=""
                                                  placeholder="联系方式" id="phone"
                                                  name="phone">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
            </div>
        </div>
    </form>
</article>
<%@include file="../../include/publicFooter.jsp" %>

<script type="text/javascript">
    $(function () {
        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });


    });
</script>
<!--/请在上方写此页面业务相关的脚本-->
