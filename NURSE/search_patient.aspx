<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="search_patient.aspx.vb" Inherits="NURSE_search_patient" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 258px;
        }
        .style3
        {
        }
        .style4
        {
            width: 134px;
        }
        .style5
        {
            width: 173px;
        }
        .style6
        {
            width: 215px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content5" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
              <p>  
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE--><!--DB CONTENT SPACE-->
               <!--APP NAVIGATION PANE-->
                   <asp:UpdatePanel runat="server">
               <ContentTemplate>
               
               
               
                   <table class="style1">
                       <tr>
                           <td bgcolor="#99CCFF" colspan="7">
                               <strong>SEARCH </strong>
                           </td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="PATIENT ID"></asp:Label>
                           </td>
                           <td class="style2">
                <asp:TextBox ID="pid" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="recnotfound" runat="server" CssClass="btn-danger" 
                    Font-Size="X-Small" Text="RECORD NOT FOUND" Visible="False"></asp:Label>
                           </td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" 
                    Text="IMAGE"></asp:Label>
                           </td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                    Text="FIRST NAME"></asp:Label>
                           </td>
                           <td class="style2">
                <asp:TextBox ID="FN" runat="server"></asp:TextBox>
                           </td>
                           <td class="style4">
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                    Text="LAST NAME"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="LN" runat="server"></asp:TextBox>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                           <td colspan="2" rowspan="6">
                               <asp:Image ID="Image1" runat="server" Height="170px" Width="227px" />
                           </td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" 
                    Text="GENDER"></asp:Label>
                           </td>
                           <td class="style2">
                               <asp:DropDownList ID="GENLIST" runat="server" AppendDataBoundItems="True" 
                                   Height="28px">
                                   <asp:ListItem>GENDER</asp:ListItem>
                                   <asp:ListItem>MALE</asp:ListItem>
                                   <asp:ListItem>FEMALE</asp:ListItem>
                               </asp:DropDownList>
                               <asp:Label ID="Label18" runat="server" CssClass="btn-danger" 
                                   Font-Size="X-Small" Text="SELECT GENDER" Visible="False"></asp:Label>
                           </td>
                           <td class="style4">
                <asp:Label ID="Label14" runat="server" style="font-weight: 700" 
                    Text="TELEPHONE"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="TEL" runat="server"></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="TEL" CssClass="btn-danger" 
                                   ErrorMessage="RegularExpressionValidator" Font-Size="XX-Small" 
                                   ValidationExpression="^[0-9]{10}$">INVALID NUMBER</asp:RegularExpressionValidator>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                <asp:Label ID="Label9" runat="server" style="font-weight: 700" 
                    Text="AGE"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="AG" runat="server" ReadOnly="True"></asp:TextBox>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label13" runat="server" style="font-weight: 700" 
                    Text="ADDRESS"></asp:Label>
                           </td>
                           <td class="style2">
                <asp:TextBox ID="ADDRE" runat="server" Height="98px" TextMode="MultiLine" 
                                   Width="216px"></asp:TextBox>
                           </td>
                           <td class="style4">
                <asp:Label ID="Label17" runat="server" style="font-weight: 700" 
                    Text="AGE"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="DOB" runat="server"></asp:TextBox>
                               <asp:CalendarExtender ID="DOB_CalendarExtender" runat="server" Enabled="True" 
                                   TargetControlID="DOB">
                               </asp:CalendarExtender>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td bgcolor="#99CCFF" class="style3" colspan="7">
                               <strong>NEXT OF KIN INFORMATION</strong></td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
                    Text="FIRST NAME"></asp:Label>
                           </td>
                           <td class="style2">
                <asp:TextBox ID="FN0" runat="server" AutoPostBack="True"></asp:TextBox>
                           </td>
                           <td class="style4">
                <asp:Label ID="Label12" runat="server" style="font-weight: 700" 
                    Text="LAST NAME"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="LN0" runat="server" AutoPostBack="True"></asp:TextBox>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                <asp:Label ID="Label15" runat="server" style="font-weight: 700" 
                    Text="ADDRESS"></asp:Label>
                           </td>
                           <td class="style2">
                <asp:TextBox ID="ADD" runat="server" AutoPostBack="True" Height="90px" TextMode="MultiLine" 
                                   Width="222px"></asp:TextBox>
                           </td>
                           <td class="style4">
                <asp:Label ID="Label16" runat="server" style="font-weight: 700" 
                    Text="TELEPHONE"></asp:Label>
                           </td>
                           <td class="style5">
                <asp:TextBox ID="TELEPH" runat="server" AutoPostBack="True"></asp:TextBox>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                   ControlToValidate="TELEPH" CssClass="btn-danger" 
                                   ErrorMessage="RegularExpressionValidator" Font-Size="XX-Small" 
                                   ValidationExpression="^[0-9]{10}$">INVALID NUMBER</asp:RegularExpressionValidator>
                           </td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               <asp:Button ID="Button1" runat="server" CssClass="btn-primary" 
                                   Text="UPDATE RECORD" />
                           </td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="style3">
                               &nbsp;</td>
                           <td class="style2">
                               &nbsp;</td>
                           <td class="style4">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style5">
                               &nbsp;</td>
                           <td class="style6">
                               &nbsp;</td>
                           <td>
                               &nbsp;</td>
                       </tr>
                  </table>
                       </ContentTemplate>
               </asp:UpdatePanel>
    </p>

               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
               <!--DB CONTENT SPACE-->
                   </asp:Content>


