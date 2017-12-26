<%--
  Created by IntelliJ IDEA.
  User: hlzhang
  Date: 2017/12/24
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>医生查询页面</title>
    <link href="styles.css" rel="stylesheet"/>
</head>
<body>
    <div>
    <div id="header">
        <%@ include  file="inc/header.inc"%>
    </div>
    <div id="main">
        <form action="VetServlet" method="post">
            <input type="hidden" name="m" value="search">
            <!-- type="hidden"  隐藏表单控件  用来传递值  这个控件在前台页面不显示 -->
            <table>
                <tr>
                    <td>姓名</td>
                    <td><input  name="vname"/></td>
                </tr>
                <tr>
                    <td>专业</td>
                    <td><input  name="sname"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><a href="VetServlet">添加新医生</a></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input  type="submit" value="查询" /> <input type="reset" value="重置"/></td>
                </tr>
            </table>

        </form>
        <h4><%=request.getAttribute("msg")==null?"":request.getAttribute("msg") %></h4>
    </div>
    <div id="footer">

    </div>
</div>
</body>
</html>