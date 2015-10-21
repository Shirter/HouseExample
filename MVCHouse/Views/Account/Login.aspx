<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Login</title>
</head>
<body>
    <div>
        <form action="Login" method="post">
        	<p><label>用户名</label><input name="username" type="text" /></p>
            <p><label>密&#160;&#160;&#160;&#160;码</label><input name="password" type="password" /></p>
            <p class="form_sub"><input type="submit" value="立即登录" /></p>
        </form>
        <p><a href="<%=Url.Content("~/Account/Register") %>">注册</a></p>
        <p><a href="<%=Url.Content("~/House/Delete/11") %>">删除房屋信息</a></p>
        <p><a href="<%=Url.Content("~/House/Edit/4") %>">修改房屋信息</a></p>
    </div>
</body>
</html>
