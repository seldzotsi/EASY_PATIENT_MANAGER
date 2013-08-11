<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="opd_vitals.aspx.vb" Inherits="OPD_opd_vitals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 194px;
        }
    .style5
    {            font-weight: 700;
        }
        .style10
        {
            width: 56px;
        }
        .style15
        {
            width: 127px;
        }
        .style16
        {
            width: 149px;
            height: 32px;
        }
        .style17
        {
            width: 194px;
            height: 32px;
        }
        .style18
        {
            width: 56px;
            height: 32px;
        }
        .style19
        {
            width: 127px;
            height: 32px;
        }
        .style20
        {
            height: 32px;
        }
    </style>
</asp:Content>
            
                        
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

        <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" class="style5" colspan="7">
                ENTER PATIENT ID TO RETRIEVE DETAILS</td>
        </tr>
        <tr>
            <td class="style5">
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
            <td class="style5">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="PATIENT ID"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="patient_id" runat="server" AutoPostBack="True"></asp:TextBox>
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
            <td class="style5">
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
                <strong>ENTER VITAL SIGNS</strong></td>
        </tr>
        <tr>
            <td class="style5">
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
                <td class="style5">
                    <asp:Label ID="Label2" runat="server" style="font-weight: 700" 
                        Text="TEMPERATURE (°C) "></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="temp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="temp" CssClass="btn-warning" 
                        ErrorMessage="PLEASE ENTER TEMPERATURE VALUE">!</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="temp" CssClass="btn-warning" ErrorMessage="INVALID ENTRY" 
                        ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$">!</asp:RegularExpressionValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" 
                        style="font-weight: 700" Text="BLOOD PRESSURE"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="bp" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="bp" CssClass="btn-warning" ErrorMessage="INVALID ENTRY" 
                        ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$">!</asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
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
                <td class="style5">
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
                <td class="style5">
                    <asp:Label ID="Label4" runat="server" style="font-weight: 700" 
                        Text="WEIGHT (kg)"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="weight" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="weight" CssClass="btn-warning" ErrorMessage="INVALID ENTRY" 
                        ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$">!</asp:RegularExpressionValidator>
                </td>
                <td class="style10">
                    &nbsp;</td>
                <td class="style15">
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700" 
                        Text="HEIGHT (ft)"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="height" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ControlToValidate="height" CssClass="btn-warning" ErrorMessage="INVALID ENTRY" 
                        ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$">!</asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
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
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    <asp:Button ID="Button3" runat="server" CssClass="btn-primary" Height="29px" 
                        Text="SAVE" Width="106px" />
                </td>
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
            <td class="style5">
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
            <td class="style16">
                </td>
            <td class="style17">
                </td>
            <td class="style18">
                </td>
            <td class="style19">
                </td>
            <td class="style20">
              
                &nbsp;</td>
            <td class="style20">
              
                &nbsp;</td>
            <td class="style20">
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    CssClass="btn-danger" />
            </td>
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
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
      </ContentTemplate>
            </asp:UpdatePanel> 
</asp:Content>
  
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

