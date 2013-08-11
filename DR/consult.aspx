<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="consult.aspx.vb" Inherits="DR_consult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style1
        {
            width: 96%;
        }
        .style13
        {
        }
        .style20
        {
            height: 22px;
        }
        .style21
        {
            width: 55px;
            height: 22px;
        }
        .style23
        {
            height: 22px;
            width: 105px;
        }
        .style25
        {
            height: 22px;
            width: 90px;
        }
        .style26
        {
            width: 90px;
        }
        .style27
        {
            width: 55px;
        }
        .style28
        {
            width: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

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
                <strong>ENTER PATIENT SYMPTOMS</strong></td>
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
                <strong>SYMPTOM 1</strong></td>
            <td class="style20">
                <asp:DropDownList ID="s1" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource2" DataTextField="SYMPTON" 
                    DataValueField="SYMPTON_ID" Height="32px" Width="225px">
                    <asp:ListItem>SELECT SYMPTOM</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="sym_war1" runat="server" CssClass="btn-danger" 
                    Font-Size="XX-Small" Text="PLEASE SELECT SYMPTON" Visible="False"></asp:Label>
                </td>
            <td class="style21">
                &nbsp;</td>
            <td class="style25">
                <strong>SYMPTOM 2</strong></td>
            <td class="style20">
                <asp:DropDownList ID="s2" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource2" DataTextField="SYMPTON" 
                    DataValueField="SYMPTON_ID" Height="32px" Width="225px">
                    <asp:ListItem>SELECT SYMPTOM</asp:ListItem>
                </asp:DropDownList>
            </td>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PCH_DBConnectionString %>" 
                    SelectCommand="SELECT * FROM [SYMPTON]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
                <asp:Label ID="Label11" runat="server" Font-Size="X-Small" 
                    style="font-weight: 700" Text="ADDITIONAL SYMPTOM"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="symplus" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                <asp:Label ID="Label12" runat="server" Font-Size="X-Small" 
                    style="font-weight: 700" Text="ADDITIONAL SYMPTOM"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="symplus2" runat="server" AutoPostBack="True"></asp:TextBox>
            </td>
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PCH_DBConnectionString %>" 
                    SelectCommand="SELECT * FROM [SYMPTON]"></asp:SqlDataSource>
            </td>
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PCH_DBConnectionString %>" 
                    SelectCommand="SELECT * FROM [SYMPTON]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28">
              
                <strong>SYMPTOM 3</strong></td>
            <td>
                <asp:DropDownList ID="s3" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource3" DataTextField="SYMPTON" 
                    DataValueField="SYMPTON_ID" Height="32px" Width="225px">
                    <asp:ListItem>SELECT SYMPTOM</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                <strong>SYMPTOM 4</strong></td>
            <td>
                <asp:DropDownList ID="s4" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource4" DataTextField="SYMPTON" 
                    DataValueField="SYMPTON_ID" Height="32px" Width="225px">
                    <asp:ListItem>SELECT SYMPTOM</asp:ListItem>
                </asp:DropDownList>
            </td>
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
                <asp:Button ID="Button3" runat="server" CssClass="btn-primary" Height="34px" 
                    Text="PRESCRIPTION" Width="125px" />
            </td>
            <td class="style27">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="btn-primary" Height="34px" 
                    Text="REFER" Width="125px" />
            </td>
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

