<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<HouseModel.House>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Delete</title>
</head>
<body>
    <h3>您确认要删除以下信息吗？
    </h3>
    <fieldset>
        <legend>House</legend>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Title) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Title) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.TypeId) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.TypeId) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Floorage) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Floorage) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Price) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Price) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.StreetId) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.StreetId) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Contract) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Contract) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.Description) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.Description) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.PublishUser) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.PublishUser) %>
        </div>
    
        <div class="display-label">
            <%: Html.DisplayNameFor(model => model.PublishTime) %>
        </div>
        <div class="display-field">
            <%: Html.DisplayFor(model => model.PublishTime) %>
        </div>
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
            <input type="submit" value="删除" /> |
            <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>
    
</body>
</html>
