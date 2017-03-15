<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Donations.aspx.cs" Inherits="Donations" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Donation Station</h1>
    <p>Donation Amount:
       
            $<asp:TextBox ID="DonationTextBox" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:RequiredFieldValidator ID="DonationTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DonationTextBox"></asp:RequiredFieldValidator>

        </p>
        <p>
        <asp:Button class="butt" ID="DonateButton" runat="server" Text="DONATE" OnClick="DonateButton_Click" />
        </p>
            <p>
            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
        </p>
        <p>
            <asp:Button class="butt" ID="BackButton1" runat="server" Text="Back" OnClick="BackButton1_Click" CausesValidation="false" />
        </p>
        
    </div>
    </form>
</body>
</html>
