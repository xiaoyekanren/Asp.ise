<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Zzm.Test.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <meta charset="utf-8" />
	<title>实验室服务器登记！</title>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/animate.min.css" rel="stylesheet"/>
    <link href="/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'/>
    <link href="/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

    <div class="wrapper">
        <div class="sidebar" data-color="purple" data-image="/assets/img/sidebar-5.jpg">

            <!--

        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag

    -->

            <div class="sidebar-wrapper">
                <div class="logo">
                    <a class="simple-text">实验室服务器登记！
                    </a>
                </div>

                <ul class="nav">
                    <li>
                        <a href="Main.aspx">
                            <i class="pe-7s-graph"></i>
                            <p>服务器使用情况</p>
                        </a>
                    </li>
                    <li>
                        <a href="AllMac.aspx">
                            <i class="pe-7s-user"></i>
                            <p>全部服务器</p>
                        </a>
                    </li>
                    <li>
                        <a href="PubClu.aspx">
                            <i class="pe-7s-note2"></i>
                            <p>公用集群</p>
                        </a>
                    </li>
                    <li>
                        <a href="VpnInfo.aspx">
                            <i class="pe-7s-news-paper"></i>
                            <p>VPN</p>
                        </a>
                    </li>
                    <li class="active">
                        <a href="Nagios.aspx">
                            <i class="pe-7s-science"></i>
                            <p>Nagios</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Nagios/main.aspx">Main</a>
                        <a class="navbar-brand"></a>
                        <a class="navbar-brand" href="Nagios/host.aspx">Host</a>
                        <a class="navbar-brand"></a>
                        <a class="navbar-brand" href="Nagios/group.aspx">Group</a>    
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                 
                                <a >Hello~Guy!~</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Striped Table with Hover</h4>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                        <th>ID</th>
                                    	<th>Name</th>
                                    	<th>Salary</th>
                                    	<th>Country</th>
                                    	<th>City</th>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        	<td>1</td>
                                        	<td>Dakota Rice</td>
                                        	<td>$36,738</td>
                                        	<td>Niger</td>
                                        	<td>Oud-Turnhout</td>
                                        </tr>
                                        <tr>
                                        	<td>2</td>
                                        	<td>Minerva Hooper</td>
                                        	<td>$23,789</td>
                                        	<td>Curaçao</td>
                                        	<td>Sinaai-Waas</td>
                                        </tr>
                                        <tr>
                                        	<td>3</td>
                                        	<td>Sage Rodriguez</td>
                                        	<td>$56,142</td>
                                        	<td>Netherlands</td>
                                        	<td>Baileux</td>
                                        </tr>
                                        <tr>
                                        	<td>4</td>
                                        	<td>Philip Chaney</td>
                                        	<td>$38,735</td>
                                        	<td>Korea, South</td>
                                        	<td>Overland Park</td>
                                        </tr>
                                        <tr>
                                        	<td>5</td>
                                        	<td>Doris Greene</td>
                                        	<td>$63,542</td>
                                        	<td>Malawi</td>
                                        	<td>Feldkirchen in Kärnten</td>
                                        </tr>
                                        <tr>
                                        	<td>6<%#Eval("id2")%></td>
                                        	<td>Mason Porter<%#Eval("name2")%></td>
                                        	<td>$78,615</td>
                                        	<td>Chile</td>
                                        	<td>Gloucester</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                            </div>
                        </div>
                    </div>

           
   

            

            <%--<div class="content">
                 貌似不用这一层
            </div>--%>


            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a> <%-->左下1--%>
                                    
                                </a>
                            </li>
                           <%-- <li>
                                <a href="#">左下2
                                </a>
                            </li>
                            <li>
                                <a href="#">左下3
                                </a>
                            </li>
                            <li>
                                <a href="#">左下4
                                </a>
                            </li>--%>
                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        工业大数据系统与应用北京市重点实验室
                        <%--&copy; 2016 <a href="#">Creative Tim</a>, More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>--%>
                    </p>
                </div>
            </footer>

        </div>
    </div>


</body>
    <script src="/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="/assets/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="/assets/js/light-bootstrap-dashboard.js"></script>
	<script src="/assets/js/chartist.min.js"></script>
	<script src="/assets/js/bootstrap-notify.js"></script>
	<script src="/assets/js/demo.js"></script>
	<!--	<script type="text/javascript">//我是右上角弹窗
    $(document).ready(function () {

        demo.initChartist();

        $.notify({
            icon: 'pe-7s-gift',
            //message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."
            message: "我是右上角弹窗"
        }, {
                type: 'info',
                timer: 2000
            });

    });
	</script>
	-->
</html>
