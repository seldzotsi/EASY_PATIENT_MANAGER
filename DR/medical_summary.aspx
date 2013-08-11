<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="medical_summary.aspx.vb" Inherits="DR_med_historyaspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style5
        {
            width: 121px;
        }
        .style11
        {
            font-weight: bold;
        }
        .style12
        {
            width: 122px;
        }
        .style13
        {
            width: 123px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
        
    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" class="style5" colspan="6">
                <strong>ENTER PATIENT ID TO RETRIEVE DETAILS</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style28" colspan="2">
                <asp:Label ID="Label1" runat="server" style="font-weight: 700" 
                    Text="PATIENT ID"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="pid" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="recnotfound" runat="server" CssClass="btn-danger" 
                    Font-Size="X-Small" Text="RECORD NOT FOUND" Visible="False"></asp:Label>
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
            <td class="style12">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" style="font-weight: 700" 
                    Text="IMAGE"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28" colspan="2">
                <asp:Label ID="Label6" runat="server" style="font-weight: 700" 
                    Text="FIRST NAME"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="FN" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style15" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                    Text="LAST NAME"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="LN" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="170px" Width="227px" />
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28" colspan="2">
                <asp:Label ID="Label8" runat="server" style="font-weight: 700" 
                    Text="GENDER"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="GENDER" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style15" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" style="font-weight: 700" 
                    Text="AGE"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="AG" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style5" bgcolor="#99CCFF" colspan="6">
                <strong>PATIENT MEDICAL SUMMARY</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style23" colspan="2">
                &nbsp;</td>
            <td class="style25">
                <strong>OPD DETAILS</strong></td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28" colspan="2">
                <strong>SELECT DATE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:DropDownList ID="selectdate" runat="server" AppendDataBoundItems="True" 
                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DATE" 
                    DataValueField="DATE" Height="33px" Width="167px">
                    <asp:ListItem>SELECT DATE</asp:ListItem>
                </asp:DropDownList>
            </td>
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
            <td class="style28" colspan="2">
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
            <td class="style12">
                <asp:Label ID="Label11" runat="server" Font-Size="Small" 
                    style="font-weight: 700" Text="TEMPERATURE (°C)"></asp:Label>
                </td>
            <td class="style26">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="temp" runat="server" AutoPostBack="True" Font-Bold="True" 
                    ReadOnly="True"></asp:TextBox>
                    </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label3" runat="server" Font-Size="Small" 
                        style="font-weight: 700" Text="BLOOD PRESSURE"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="bp" runat="server" AutoPostBack="True" Font-Bold="True" 
                    ReadOnly="True"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
                <asp:Label ID="Label12" runat="server" Font-Size="Small" 
                    style="font-weight: 700" Text="WEIGHT (Kg)"></asp:Label>
            </td>
            <td class="style26">
                    &nbsp;&nbsp;
                    <asp:TextBox ID="WEIGHT" runat="server" AutoPostBack="True" 
                    Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
            <td>
                &nbsp;</td>
            <td>
                    <asp:Label ID="Label5" runat="server" style="font-weight: 700" 
                        Text="HEIGHT (ft)"></asp:Label>
                </td>
            <td>
                    <asp:TextBox ID="height" runat="server" AutoPostBack="True" 
                    Font-Bold="True" ReadOnly="True"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style12">
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
                <strong>REPORTED SYMPTOMS</strong></td>
            <td class="style12">
                &nbsp;</td>
            <td class="style26">
                <strong>PRESCRIPTIONS</strong></td>
            <td>
                &nbsp;</td>
            <td style="font-weight: 700">
                REFERRALS</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style28" colspan="2">
                <asp:ListBox ID="ListBox1" runat="server" Height="233px" Width="233px" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
            </td>
            <td class="style26" colspan="2">
                <asp:ListBox ID="ListBox2" runat="server" Height="233px" Width="233px" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
            </td>
            <td colspan="2">
                <asp:ListBox ID="ListBox3" runat="server" Height="233px" Width="233px" 
                    AutoPostBack="True">
                    <asp:ListItem></asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style12">
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
            <td class="style12">
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
                <asp:Button ID="Button3" runat="server" CssClass="btn-primary" Height="34px" 
                    Text="NEW CASE" Width="125px" />
            </td>
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
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
            <td class="style12">
                &nbsp;</td>
            <td class="style26">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PCH_DBConnectionString %>" 
                    SelectCommand="SELECT [DATE] FROM [OPD] WHERE ([PATIENT_ID] = @PATIENT_ID) ORDER BY [DATE] DESC">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="pid" Name="PATIENT_ID" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
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
    </ContentTemplate>
        </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

