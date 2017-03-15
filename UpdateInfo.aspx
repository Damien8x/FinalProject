<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UpdateInfo.aspx.cs" Inherits="UpdateInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Update Information</h1>
        <h2>All Fields Are Required</h2>
    <table>
        <tr>
            <td>Last Name</td>
            <td>
                <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox></td>
            <asp:RequiredFieldValidator ID="LastNameValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
            <td>
            </td>
        </tr>
         <tr>
            <td>First Name</td>
            <td>
                <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox></td>
                         <asp:RequiredFieldValidator ID="FirstNameValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>

            <td>      
            </td>
        </tr>
         <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="EmailTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" ErrorMessage="You Best Put A Valid Email!" ControlToValidate="EmailTextBox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              <td>
            </td>
        </tr>
         <tr>
            <td>Apartment Number</td>
            <td>
                <asp:TextBox ID="ApartmentNumberTextBox" runat="server"></asp:TextBox></td>
             
            <td></td>
        </tr>
         <tr>
            <td>Street</td>
            <td>
                <asp:TextBox ID="StreetTextBox" runat="server"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="StreetTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="StreetTextBox"></asp:RequiredFieldValidator>
            <td></td>
        </tr>
         <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="CityTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="CityTextBox"></asp:RequiredFieldValidator>

            <td></td>
        </tr>
         <tr>
            <td>State</td>
            <td>
                <asp:TextBox ID="StateTextBox" runat="server"></asp:TextBox></td>
            <td></td>
        </tr>
         <tr>
            <td>Zipcode</td>
            <td>
                <asp:TextBox ID="ZipcodeTextBox" runat="server"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="ZipCodeTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ZipcodeTextBox"></asp:RequiredFieldValidator>
             <td></td>
        </tr>
       
        <tr>
            <td>
                <asp:Button class="butt" ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /> <asp:Button CssClass="butt" ID="BackButton" runat="server" Text="Back" CausesValidation="false" /></td>
           
            <asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label>
               
            <td>&nbsp;</td>
        </tr>
    </table>

        <p>

        </p>
    </div>
    </form>
</body>
</html>

