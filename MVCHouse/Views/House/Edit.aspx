<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<HouseModel.House>" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Index</title>
</head>
<body>
    <script src="<%: Url.Content("~/Scripts/jquery-1.7.1.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.min.js") %>"></script>
    <script src="<%: Url.Content("~/Scripts/jquery.validate.unobtrusive.min.js") %>"></script>
    
    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    
        <fieldset>
            <legend>House</legend>
    
            <%: Html.HiddenFor(model => model.HouseId) %>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Title) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Title) %>
                <%: Html.ValidationMessageFor(model => model.Title) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.TypeId) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.TypeId) %>
                <%: Html.ValidationMessageFor(model => model.TypeId) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Floorage) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Floorage) %>
                <%: Html.ValidationMessageFor(model => model.Floorage) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Price) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Price) %>
                <%: Html.ValidationMessageFor(model => model.Price) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.StreetId) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.StreetId) %>
                <%: Html.ValidationMessageFor(model => model.StreetId) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Contract) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Contract) %>
                <%: Html.ValidationMessageFor(model => model.Contract) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Description) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Description) %>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PublishUser) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.PublishUser) %>
                <%: Html.ValidationMessageFor(model => model.PublishUser) %>
            </div>
    
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PublishTime) %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.PublishTime) %>
                <%: Html.ValidationMessageFor(model => model.PublishTime) %>
            </div>
    
            <p>
                <input type="submit" value="提交" />
            </p>
        </fieldset>
    <% } %>
    
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</body>
</html>
