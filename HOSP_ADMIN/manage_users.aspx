<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="manage_users.aspx.vb" Inherits="HOSP_ADMIN_manage_users" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 231px;
        }
        .style4
        {
            width: 114px;
        }
        .style5
        {
            width: 93px;
            height: 27px;
        }
        .style6
        {
            width: 231px;
            height: 27px;
        }
        .style7
        {
            width: 114px;
            height: 27px;
        }
        .style8
        {
            height: 27px;
        }
        .style9
        {
            height: 23px;
        }
        .style10
        {
            width: 231px;
            height: 23px;
        }
        .style11
        {
            width: 114px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <%--<asp:UpdatePanel runat="server">
<ContentTemplate>--%>


    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" colspan="6">
                <strong>REMOVER USER FROM ROLE</strong></td>
        </tr>
        <tr>
            <td class="style5">
                </td>
            <td class="style6">
                </td>
            <td class="style7">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
            <td class="style8">
                </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="USER NAME"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="223px" 
                    AppendDataBoundItems="True" AutoPostBack="True">
                    <asp:ListItem>SELECT USER</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style4">
                <asp:Label ID="SELUS" runat="server" CssClass="btn-danger" Text="SELECT USER" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DD2" runat="server" AppendDataBoundItems="True" 
                    Height="32px" Width="223px">
                    <asp:ListItem>SELECT ROLE</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td>
                <asp:Label ID="SELUS0" runat="server" CssClass="btn-danger" Text="SELECT ROLE" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="30px" 
                    Text="REMOVE " Width="132px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#99CCFF" colspan="6">
                <strong>DELETE USER</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" style="font-weight: 700" Text="USER NAME"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="pickuser" runat="server" AppendDataBoundItems="True" 
                    AutoPostBack="True" Height="32px" Width="223px">
                    <asp:ListItem>SELECT USER</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:Label ID="SEL" runat="server" CssClass="btn-danger" Text="SELECT USER" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="btn-primary" Height="30px" 
                    Text="DELETE USER" Width="132px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style11">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
            <td class="style9">
                </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <%--    </ContentTemplate>
</asp:UpdatePanel>--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

