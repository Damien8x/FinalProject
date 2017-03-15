<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
    <h1>Welcome To Community Assist</h1>
        <h3>Where Assistance Is Futile</h3>

      <p>Community Assist is a local non-profit built to help people who cannot help themselves.
      </p>
    <p>Login below to manage grants and donations</p>
        <p>
        <asp:Button class="butt" ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
        </p>
        <p>Don't have an account? Register Here</p>
        <p>
        <asp:Button class="butt" ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
            </p>
    </form>
</body>
</html>

