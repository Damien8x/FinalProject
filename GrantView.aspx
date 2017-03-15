<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrantView.aspx.cs" Inherits="GrantView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Here Are Your Grants</h3>
       <p>
         <asp:GridView Class="gridview" ID="GridView1" runat="server"></asp:GridView>
       </p>
            <p>

            <asp:Button class="butt" ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" />
        </p>
    </div>
    </form>
</body>
</html>
