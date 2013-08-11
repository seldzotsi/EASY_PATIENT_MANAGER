<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="medical_history.aspx.vb" Inherits="DR_medical_history" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

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
        }
        .style4
        {
            width: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td bgcolor="#99CCFF" class="style2">
            &nbsp;</td>
        <td bgcolor="#99CCFF" class="style4">
            &nbsp;</td>
        <td bgcolor="#99CCFF">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                Text="PATIENT ID"></asp:Label>
        </td>
        <td class="style4">
            <asp:TextBox ID="pid" runat="server"></asp:TextBox>
        </td>
        <td>
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="30px" 
                    Text="HISTORY" Width="132px" />
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="3">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" EnableDatabaseLogonPrompt="False" 
                EnableParameterPrompt="False" />
        </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

