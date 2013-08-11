<%@ Page Title="" Language="VB" MasterPageFile="~/MASTER/app_design.master" AutoEventWireup="false" CodeFile="DR_prescription.aspx.vb" Inherits="prescription" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-size: small;
    }
    .style2
    {
        width: 35px;
    }
    .style3
    {
        height: 22px;
    }
    .style4
    {
        width: 35px;
        height: 22px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <table class="style1">
        <tr>
            <td bgcolor="#99CCFF" class="style5" colspan="8">
                <strong>ENTER PATIENT ID TO RETRIEVE DETAILS</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
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
                <asp:TextBox ID="pid2" runat="server" AutoPostBack="True"></asp:TextBox>
                <asp:Label ID="recnotfound" runat="server" CssClass="btn-danger" 
                    Font-Size="X-Small" Text="RECORD NOT FOUND" Visible="False"></asp:Label>
                </td>
            <td class="style2">
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
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
            <td class="style2">
                &nbsp;</td>
            <td class="style15">
                <asp:Label ID="Label7" runat="server" style="font-weight: 700" 
                    Text="LAST NAME"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="LN" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            <td colspan="3" rowspan="3">
                <asp:Image ID="Image1" runat="server" Height="170px" Width="227px" />
            </td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style2">
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
            <td class="style2">
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
            <td class="style2">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#99CCFF" colspan="8">
                <strong>PRISCRIPTION</strong></td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            
            <td>
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
                <strong>PRESCRIPTION 1</strong></td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26" colspan="2">
                <strong>PRESCRIPTION 2</strong></td>
            
            <td>
                &nbsp;</td>
            <td colspan="2">
                <strong>PRESCRIPTION 3</strong></td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                <asp:Label ID="Label11" runat="server" style="font-weight: 700" 
                    Text="MEDICATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="MED1" runat="server" AppendDataBoundItems="True" 
                    DataSourceID="SqlDataSource1" DataTextField="PRESCRIPTION_NAME" 
                    DataValueField="PRESCRIPTION_ID" Height="30px" Width="196px">
                    <asp:ListItem>SELECT MEDICATION</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="sym_war1" runat="server" CssClass="btn-danger" 
                    Font-Size="XX-Small" Text="PLEASE SELECT MEDICATION" Visible="False"></asp:Label>
                </td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                <asp:Label ID="Label15" runat="server" style="font-weight: 700" 
                    Text="MEDICATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="MED2" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="PRESCRIPTION_NAME" DataValueField="PRESCRIPTION_ID" 
                    Height="27px" Width="222px" AppendDataBoundItems="True">
                    <asp:ListItem>SELECT MEDICATION</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                <asp:Label ID="Label19" runat="server" style="font-weight: 700" 
                    Text="MEDICATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="MED3" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="PRESCRIPTION_NAME" DataValueField="PRESCRIPTION_ID" 
                    Height="27px" Width="222px" AppendDataBoundItems="True">
                    <asp:ListItem>SELECT MEDICATION</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                <asp:Label ID="Label12" runat="server" style="font-weight: 700" Text="DOSAGE"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="DOS1" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DOSAGE</asp:ListItem>
                    <asp:ListItem>miligrams</asp:ListItem>
                    <asp:ListItem>liters</asp:ListItem>
                    <asp:ListItem>mili liters</asp:ListItem>
                    <asp:ListItem>grams</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                <asp:Label ID="Label16" runat="server" style="font-weight: 700" Text="DOSAGE"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="DOS2" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DOSAGE</asp:ListItem>
                    <asp:ListItem>miligrams</asp:ListItem>
                    <asp:ListItem>liters</asp:ListItem>
                    <asp:ListItem>mili liters</asp:ListItem>
                    <asp:ListItem>grams</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                <asp:Label ID="Label20" runat="server" style="font-weight: 700" Text="DOSAGE"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList ID="DOS3" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DOSAGE</asp:ListItem>
                    <asp:ListItem>miligrams</asp:ListItem>
                    <asp:ListItem>liters</asp:ListItem>
                    <asp:ListItem>mili liters</asp:ListItem>
                    <asp:ListItem>grams</asp:ListItem>
                </asp:DropDownList>
                </td>
       
        
        </tr>
        <tr>
            <td class="style3" bgcolor="MintCream">
                </td>
            <td bgcolor="MintCream" class="style3">
                </td>
            <td class="style4" bgcolor="MintCream">
                </td>
            <td class="style3" bgcolor="MintCream">
                </td>
            <td bgcolor="MintCream" class="style3">
                </td>
            <td bgcolor="MintCream" class="style3">
                </td>
            <td bgcolor="MintCream" class="style3">
                </td>
            <td bgcolor="MintCream" class="style3">
                </td>
       
        
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                <asp:Label ID="Label13" runat="server" style="font-weight: 700" 
                    Text="FREQUENCY"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList 
                    ID="FREQ1" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>FREQUENCY</asp:ListItem>
                    <asp:ListItem>1 daily</asp:ListItem>
                    <asp:ListItem>2 daily</asp:ListItem>
                    <asp:ListItem>3 daily</asp:ListItem>
                    <asp:ListItem>4 daily</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                <asp:Label ID="Label17" runat="server" style="font-weight: 700" 
                    Text="FREQUENCY"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList 
                    ID="FREQ2" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>FREQUENCY</asp:ListItem>
                    <asp:ListItem>1 daily</asp:ListItem>
                    <asp:ListItem>2 daily</asp:ListItem>
                    <asp:ListItem>3 daily</asp:ListItem>
                    <asp:ListItem>4 daily</asp:ListItem>
                </asp:DropDownList>
                </td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                <asp:Label ID="Label21" runat="server" style="font-weight: 700" 
                    Text="FREQUENCY"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <asp:DropDownList 
                    ID="FREQ3" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>FREQUENCY</asp:ListItem>
                    <asp:ListItem>1 daily</asp:ListItem>
                    <asp:ListItem>2 daily</asp:ListItem>
                    <asp:ListItem>3 daily</asp:ListItem>
                    <asp:ListItem>4 daily</asp:ListItem>
                </asp:DropDownList>
                </td>
       
        
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                <asp:Label ID="Label14" runat="server" style="font-weight: 700" Text="DURATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DUR1" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DURATION</asp:ListItem>
                    <asp:ListItem>1 week</asp:ListItem>
                    <asp:ListItem>2 weeks</asp:ListItem>
                    <asp:ListItem>3 weeks</asp:ListItem>
                    <asp:ListItem>for life</asp:ListItem>
                    <asp:ListItem>till sympton end</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                <asp:Label ID="Label18" runat="server" style="font-weight: 700" Text="DURATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DUR2" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DURATION</asp:ListItem>
                    <asp:ListItem>1 week</asp:ListItem>
                    <asp:ListItem>2 weeks</asp:ListItem>
                    <asp:ListItem>3 weeks</asp:ListItem>
                    <asp:ListItem>for life</asp:ListItem>
                    <asp:ListItem>till sympton end</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                <asp:Label ID="Label22" runat="server" style="font-weight: 700" Text="DURATION"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DUR3" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DURATION</asp:ListItem>
                    <asp:ListItem>1 week</asp:ListItem>
                    <asp:ListItem>2 weeks</asp:ListItem>
                    <asp:ListItem>3 weeks</asp:ListItem>
                    <asp:ListItem>for life</asp:ListItem>
                    <asp:ListItem>till sympton end</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
       
        
        </tr>
        <tr>
            <td class="style28" bgcolor="MintCream">
                <asp:Label ID="Label23" runat="server" style="font-weight: 700" 
                    Text="DIRECTIONS"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DIR1" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DIRECTION</asp:ListItem>
                    <asp:ListItem>BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>AFTER MEALS</asp:ListItem>
                    <asp:ListItem>1 HR BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>1 HR AFTER MEALS</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td class="style2" bgcolor="MintCream">
                &nbsp;</td>
            <td class="style26" bgcolor="MintCream">
                <asp:Label ID="Label24" runat="server" style="font-weight: 700" 
                    Text="DIRECTIONS"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DIR2" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DIRECTION</asp:ListItem>
                    <asp:ListItem>BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>AFTER MEALS</asp:ListItem>
                    <asp:ListItem>1 HR BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>1 HR AFTER MEALS</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
            <td bgcolor="MintCream">
                &nbsp;</td>
            <td bgcolor="MintCream">
                <asp:Label ID="Label25" runat="server" style="font-weight: 700" 
                    Text="DIRECTIONS"></asp:Label>
            </td>
            <td bgcolor="MintCream">
                <strong>
                <asp:DropDownList 
                    ID="DIR3" runat="server" 
                    Height="27px" Width="122px" AppendDataBoundItems="True">
                    <asp:ListItem>DIRECTION</asp:ListItem>
                    <asp:ListItem>BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>AFTER MEALS</asp:ListItem>
                    <asp:ListItem>1 HR BEFORE MEALS</asp:ListItem>
                    <asp:ListItem>1 HR AFTER MEALS</asp:ListItem>
                </asp:DropDownList>
                </strong></td>
       
        
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
                <asp:Button ID="Button3" runat="server" CssClass="btn-primary" Height="29px" 
                    Text="SAVE" Width="106px" />
            </td>
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
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
            <td class="style2">
                &nbsp;</td>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:PCH_DBConnectionString %>" 
                    SelectCommand="SELECT * FROM [PRESCRIPTION_LIST]"></asp:SqlDataSource>
            </td>
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

