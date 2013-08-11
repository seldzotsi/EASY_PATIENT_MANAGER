<%@ Page Language="VB" AutoEventWireup="false" CodeFile="learn_more.aspx.vb" Inherits="learn_more" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       <div class="navbar navbar-inverse navbar-fixed-top">
   		<div class="navbar-inner">
   			<div class="container">

   				<a href="default.aspx" class="brand">Patient CASE HISTORY<asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" />
                   </a>
                   <asp:LoginStatus ID="LoginStatus1" runat="server" CssClass="btn" />
                <div class="continer pull-right">
    
                    <asp:Menu ID="Menu2" runat="server" CssClass="btn" 
                        DataSourceID="SiteMapDataSource2" Orientation="Horizontal" 
                        StaticDisplayLevels="2" Width="500px">
                        <StaticMenuItemStyle Width="100px" />
                    </asp:Menu>
       
         </div>   
   			</div>
   	          </div>
              </div>
              <hr />
    
   <br />


              <div class="container">
              <div class="row">
              <div class="span12">
              <h1>Patient Case History</h1>
              </div>

               <div class="span9 pull-right">
          <h2><a href="#">Introduction</a></h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nunc felis, lobortis eu blandit non, aliquam vitae elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed in dui ac neque dapibus pretium. Aenean adipiscing ipsum nec elit sagittis porta. Ut egestas feugiat aliquet. Aliquam vel suscipit nisi. Duis nec massa tempus velit varius eleifend.</p>
          
       
          
          
          
          
          </div>
              <div class="span2 well">
          <h2>Latest Posts</h2>
          <ul class="unstyled">
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
        </div>
              
              </div>
                     <hr />
                            <footer>
        <p>&copy; Patient Case History 2013</p>
      </footer>
                     </div>
       
              
       
              

    
    </form>
</body>
</html>
