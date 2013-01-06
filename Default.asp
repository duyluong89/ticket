<!DOCTYPE html>
<html>
<head>
    <title>Ticket Manager</title>
    <link href="/skin/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/skin/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/library/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="/library/ckfinder/ckfinder.js"></script>

</head>
<body>
<table style="width:100%; height:100%">
    <tr>
        <td colspan="2">
            <div class="header">

            </div>
        </td>
    </tr>
        <tr>
            <td colspan="2">
                <ul id="nav">
                    <li><a href="#" >HOME</a></li>
                    <li><a href="#">NEW PROGRAM</a></li>
                    <li><a href="#">LOCATION</a></li>
                    <li><a href="#">Band</a>
                        <ul>
                            <li><a href="?q=AddBand">Add Band</a></li>
                            <li><a href="?q=BandSpecical">Band Specical</a></li>
                        </ul>


                    </li>
                    <li><a href="#">List customer</a>
                        <ul>
                            <li><a href="?q=Addcustomer">Add Customer</a></li>
                            <li><a href="?q=listcustomer">Customer list</a></li>
                        </ul>
                    </li>
                    <li><a href="?q=Ticket">Ticket</a></li>

                </ul>
            </td>
        </tr>
        <tr>
            <td style ="width: 13%">
            	<div class="block">
                    <div class="title">Quick proccess</div>
                    <div class="content">
                        <ul>
                            <li><a href="#">Sale Ticket</a></li>
                            <li><a href="#">Search Ticket</a></li>

                        </ul>

                    </div>
                </div>
   </td>
            <td style= "width:86%;" >
              <%
                        dim a 
                        a = Request.QueryString("q")
                        select case a

                            case "Ticket": 
                                %>
                                <!--#include file="modules/ticketbuy/formTicket.asp"-->
                                <%
                            case "AddBand": 
                                %>
                                <!--#include file="modules/band/formBand.asp"-->
                                <%
                             case "Addcustomer": 
                                %>
                                <!--#include file="modules/customer/customer.asp"-->
                                <%

                            case else
                                %>
                                <!--#include file="modules/home/home.asp"-->
                                <%
                            end select
                        

                    %>
            </td>
            
        </tr>
        <tr>
            <td colspan="2" >
                This is footer
            </td>
            
        </tr>
        
    </table>
</body>
</html>