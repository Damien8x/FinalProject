<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login</h1>
                <h2>User Name:  <asp:TextBox Class="text" ID="UserNameTextBox" runat="server"></asp:TextBox></h2>
           <h2>Password: <asp:TextBox Class="text" ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
             </h2>
            
            
            <h2>      <asp:Button class="butt" ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
        </h2>
        <h2> <asp:Button class="butt" ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" CausesValidation="false" />

        </h2>
        <h2><asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label></h2>
        <h2>   <asp:RequiredFieldValidator ID="PassWordTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
                
               <asp:RequiredFieldValidator ID="UserNameTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>
                </h2>
                   </div>
    </form>
</body>
</html>

