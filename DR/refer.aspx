<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="refer.aspx.vb" Inherits="DR_refer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" class="style5" colspan="7">
                <strong>ENTER PATIENT ID TO RETRIEVE DETAILS</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="PATIENT ID"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="pid" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="recnotfound" runat="server" CssClass="btn-danger" 
                    Font-Size="X-Small" Text="RECORD NOT FOUND" Visible="False"></asp:Label>
                </td>
            <td class="style10">
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn-primary">SEARCH</asp:LinkButton>
            </td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" 
                    Text="IMAGE"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                    Text="FIRST NAME"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="FN" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                    Text="LAST NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LN" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            <td colspan="2" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="170px" Width="227px" />
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" 
                    Text="GENDER"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="GENDER" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label9" runat="server" style="font-weight: 700" 
                    Text="AGE"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="AG" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#99CCFF" colspan="7">
                <strong>REFERRAL DESTINATION</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
                    Text="DESTINATION"></asp:Label>
            </td>
            <td class="style20">
                <asp:DropDownList ID="dest" runat="server" Height="26px" Width="225px">
                    <asp:ListItem>KORLE BU </asp:ListItem>
                    <asp:ListItem>MAMOBI POLYCLINIC</asp:ListItem>
                    <asp:ListItem>RIDGE HOSPITAL</asp:ListItem>
                    <asp:ListItem>ACHIMOTA HOSPITAL</asp:ListItem>
                    <asp:ListItem>LISTER HOSPITAL</asp:ListItem>
                    <asp:ListItem>37 HOSPITAL</asp:ListItem>
                    <asp:ListItem>POLICE HOSPITAL</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style21">
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="SAVE" 
                    Width="76px" />
            </td>
            <td class="style25">
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style13" colspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
              
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <table>
    <tr>
    <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td>
                &nbsp;</td>
            
    </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

