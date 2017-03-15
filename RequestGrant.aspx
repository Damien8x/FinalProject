<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RequestGrant.aspx.cs" Inherits="RequestGrant" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title>Grant page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Apply for a grant</h1>
       <p>
    <asp:ListBox CssClass="listbox" ID="GrantsDropDownList" runat="server">
    <asp:ListItem Text="Food" Value="1" Selected="True" />
    <asp:ListItem Text="Rent" Value="2" />
    <asp:ListItem Text="Child Care" Value="3" />
    <asp:ListItem Text="Transportation" Value="4" />
     <asp:ListItem Text="Medical" Value="5" />
     <asp:ListItem Text="Dental" Value="6" />
     <asp:ListItem Text="Utilities" Value="7" />
     <asp:ListItem Text="Home Repair" Value="8" />
     <asp:ListItem Text="Education" Value="9" />
     <asp:ListItem Text="Clothes" Value="10" />
     <asp:ListItem Text="Funerary" Value="11" />
     <asp:ListItem Text="Holiday" Value="12" />
     <asp:ListItem Text="Emergency Travel" Value="13" />
</asp:ListBox><br />

    </p>
        <p>Explain why you need the grant <asp:TextBox ID="ExplainTextBox" 
            runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ExplainTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ExplainTextBox"></asp:RequiredFieldValidator>
        </p>
        <p>Enter the Amount <asp:TextBox ID="AmountTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="AmountTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="AmountTextBox" ></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button class="butt" ID="GrantButton" runat="server" Text="submit" OnClick="GrantButton_Click" />
      
        </p>

        <p>
            <asp:Button class="butt" ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" CausesValidation="false" />
        </p>
             <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>