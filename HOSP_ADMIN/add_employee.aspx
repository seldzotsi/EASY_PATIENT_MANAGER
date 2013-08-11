<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="add_employee.aspx.vb" Inherits="HOSP_ADMIN_add_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 229px;
        }
        .style4
        {
            width: 102px;
        }
        .style5
        {
            width: 248px;
        }
        .style6
        {
            width: 31px;
        }
        .style7
        {
            width: 133px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" colspan="6">
                <strong>ADD USER</strong></td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="USER PASSWORD" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="UPASS" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="FIRST NAME *"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fn" CssClass="btn-warning" 
                    ErrorMessage="FIRST NAME IS REQUIRED">!</asp:RequiredFieldValidator>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="LAST NAME *"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ln" CssClass="btn-warning" ErrorMessage=" NAME IS REQUIRED">!</asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="E-MAIL *"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="email" CssClass="btn-danger" ErrorMessage="INVALID E MAIL " 
                    Font-Size="X-Small" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="USER NAME*"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="UN" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="UN" CssClass="btn-warning" 
                    ErrorMessage="USERNAME IS REQUIRED">!</asp:RequiredFieldValidator>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="PHONE*"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="ph" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    CssClass="btn-danger" ErrorMessage="RegularExpressionValidator" 
                    ValidationExpression="^[0-9]{10}$" ControlToValidate="ph" 
                    Font-Size="X-Small">INVALID NUMBER</asp:RegularExpressionValidator>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="ROLE"></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="223px" 
                    AppendDataBoundItems="True">
                    <asp:ListItem>SELECT ROLE</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                <asp:Label ID="errorlab" runat="server" CssClass="btn-danger" Font-Size="Small" 
                    Text="PLEASE SELECT A ROLE" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="IMAGE"></asp:Label>
            </td>
            <td class="style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="30px" 
                    Text="ADD USER" Width="132px" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    CssClass="btn-danger" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

