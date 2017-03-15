<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ManageAccount.aspx.cs" Inherits="ManageAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Manage Your Account</h1>

        <h2>Make A Donation</h2>
        <p>
        <asp:Button class="butt" ID="DonationButton" runat="server" Text="Donate" OnClick="DonationButton_Click" />
        </p>
            <h2>View Donations</h2>
       <p>
         <asp:Button class="butt" ID="ViewDonationsButton" runat="server" Text="View Donations" OnClick="ViewDonationsButton_Click" />
        </p>
           <h2>Apply For Grant</h2>
        <p>
        <asp:Button class="butt" ID="GrantButton" runat="server" Text="Request Grant" OnClick="GrantButton_Click" />
        </p>
            <h2>View Grants</h2>
        <p>
        <asp:Button class="butt" ID="ViewGrantsButton" runat="server" Text="View Grant" OnClick="ViewGrantsButton_Click" />
            </p>
            <h2>Update Personal Information</h2>
        <p>
        <asp:Button CssClass="butt" ID="UpdateButton" runat="server" Text="Update Info" OnClick="UpdateButton_Click" />
            </p>
    </div>
    </form>
</body>
</html>
