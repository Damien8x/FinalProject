<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
             <asp:RequiredFieldValidator ID="PasswordTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
               <td>
            </td>
        </tr>
           <tr>
            <td>Confirm Password</td>
            <td>
                <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox></td>
                         <asp:RequiredFieldValidator ID="ConfirmPasswordTextBoxValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox"></asp:CompareValidator>
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
             <asp:RangeValidator ID="ZipcodeTextBoxValidator1" runat="server" ErrorMessage="RangeValidator" MinimumValue="10000" MaximumValue="99999" ControlToValidate="ZipcodeTextBox"></asp:RangeValidator>
             <td></td>
        </tr>
         <tr>
            <td>Home Phone</td>
            <td>
                <asp:TextBox ID="HomePhoneTextBox" runat="server"></asp:TextBox></td>


            <td></td>
        </tr>
         <tr>
            <td>Work Phone</td>
            <td>
                <asp:TextBox ID="WorkPhoneTextBox" runat="server"></asp:TextBox></td>

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
