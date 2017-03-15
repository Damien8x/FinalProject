<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewDonation.aspx.cs" Inherits="ViewDonation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>YOUR DONATIONS MAKE A DIFFERENCE</h1>
    
      <p>  <asp:GridView  class="gridview" ID="GridView1" runat="server"></asp:GridView></p>
       <p>
           <asp:Button CssClass="butt" ID="BackButton" runat="server" Text="Back" CausesValidation="false" OnClick="BackButton_Click" />
       </p>
        
          </div> 
    </form>
</body>
</html>
