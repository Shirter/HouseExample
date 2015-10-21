<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<HouseModel.User>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Register</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>User</legend>    
    
            <div class="editor-label">
                用户名：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.LoginName) %>
                <%: Html.ValidationMessageFor(model => model.LoginName) %>
            </div> 
    
            <div class="editor-label">
                密码：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Password) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>

            <div class="editor-label">
                确认密码：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.PasswordConfirm) %>
                <%: Html.ValidationMessageFor(model => model.PasswordConfirm) %>
            </div>
    
            <div class="editor-label">
                手机号;
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Telephone) %>
                <%: Html.ValidationMessageFor(model => model.Telephone) %>
            </div>

            <div class="editor-label">
                用户姓名:
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.UserName) %>
                <%: Html.ValidationMessageFor(model => model.UserName) %>
            </div>
    
            <p>
                <input type="submit" value="立即注册" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("已有账号，返回登录", "Login") %>
    </div>
</body>
</html>
