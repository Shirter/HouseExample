<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<HouseModel.House>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
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
    <p>
    
        <%: Html.ActionLink("Edit", "Edit", new { id=Model.HouseId }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
</body>
</html>
