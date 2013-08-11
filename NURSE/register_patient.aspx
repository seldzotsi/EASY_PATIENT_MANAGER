<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="register_patient.aspx.vb" Inherits="OPD_register_patient" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    .style3
    {
        width: 177px;
    }
    .style5
    {
            width: 146px;
        }
        .style7
        {
            font-size: larger;
        }
        .style8
        {
        width: 106px;
    }
        .style9
        {
            width: 14px;
        }
        .style14
        {
            width: 115px;
        }
        .style15
        {
            width: 108px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

<asp:Content ID="Content6" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" colspan="7" class="style7">
                <strong>PATIENT REGISTRATION</strong></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="nupid" runat="server" Font-Bold="True" Text="PATIENT ID" 
                    Visible="False"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="nupidbx" runat="server" ReadOnly="True" Visible="False"></asp:TextBox>
                </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="FIRST NAME *"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="fn" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="fn" ErrorMessage="FIRST NAME IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="LAST NAME *"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="ln" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ln" ErrorMessage="LAST NAME IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="DATE OF BIRTH *"></asp:Label>
                <br />
                </td>
            <td class="style3">
                <asp:TextBox ID="dob" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="dob_CalendarExtender" runat="server" Enabled="True" 
                    TargetControlID="dob">
                </asp:CalendarExtender>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="dob" ErrorMessage="DATE OF BIRTH IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
                <asp:Label ID="DATECHK" runat="server" Font-Size="X-Small" ForeColor="#C83F39" 
                    Text="INVALID DATE" Visible="False"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="PHONE*"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="tel" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="tel" ErrorMessage="MOBILE IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style14">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    BorderStyle="None" ControlToValidate="tel" 
                    ErrorMessage="PLEASE ENTER A VALID NUMBER" Font-Size="X-Small" 
                    ForeColor="#C83F39" style="font-weight: 700" ValidationExpression="^[0-9]{10}$" 
                    Width="172px"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label12" runat="server" Font-Bold="True" Text="GENDER *"></asp:Label>
            </td>
            <td class="style3">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="223px">
                    <asp:ListItem>SELECT GENDER</asp:ListItem>
                    <asp:ListItem>MALE</asp:ListItem>
                    <asp:ListItem>FEMALE</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="GENSELECT" runat="server" Font-Size="X-Small" 
                    ForeColor="#C83F39" Text="SELECT GENDER" Visible="False"></asp:Label>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="IMAGE"></asp:Label>
            </td>
            <td class="style15">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="33px" />
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="ADDRESS"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="add" runat="server" Height="111px" TextMode="MultiLine" 
                    Width="307px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="add" ErrorMessage="ADDRESS IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" bgcolor="#99CCFF" colspan="7">
                <strong>EMERGENCY CONTACT</strong></td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="FIRST NAME *"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="fnnok" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="fnnok" ErrorMessage="FIRST NAME IS REQUIRED" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="LAST NAME *"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="lnnok" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="lnnok" ErrorMessage="LAST NAME IS REQUIRED" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="ADDRESS"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="addnok" runat="server" Height="111px" TextMode="MultiLine" 
                    Width="307px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="addnok" ErrorMessage="ADDRESS IS REQUIRED" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style8">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="PHONE*"></asp:Label>
            </td>
            <td class="style15">
                <asp:TextBox ID="mobnok" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="mobnok" ErrorMessage="MOBILE IS A REQUIRED FIELD" 
                    CssClass="btn-warning" Width="10px">!</asp:RequiredFieldValidator>
            </td>
            <td class="style14">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    BorderStyle="None" ControlToValidate="mobnok" 
                    ErrorMessage="PLEASE ENTER A VALID NUMBER" Font-Size="X-Small" 
                    ForeColor="#C83F39" style="font-weight: 700" ValidationExpression="^[0-9]{10}$" 
                    Width="172px"></asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Height="30px" 
                    Text="SAVE" Width="132px" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    CssClass="btn-danger" ShowMessageBox="True" />
            </td>
            <td class="style9">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


