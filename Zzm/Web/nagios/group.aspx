<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="group.aspx.cs" Inherits="Zzm.Web.nagios.group" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-1.jpg">
        <div class="sidebar-wrapper ">
            <div class="logo">
                <a class="simple-text">实验室服务器登记！
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="/Web/registinfo.aspx">
                        <i class="pe-7s-graph"></i>
                        <p>服务器使用情况</p>
                    </a>
                </li>
                <li >
                    <a href="/Web/allinfo.aspx">
                        <i class="pe-7s-user"></i>
                        <p>全部服务器</p>
                    </a>
                </li>
                <li>
                    <a href="/Web/cluster.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>公用集群</p>
                    </a>
                </li>
                <li>
                    <a href="/Web/vpninfo.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>VPN</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/Web/nagios/monitor.aspx">
                        <i class="pe-7s-science"></i>
                        <p>Nagios</p>
                    </a>
                </li>
                <li class="active-pro">
                    <a href="#">
                       <i class="pe-7s-male"></i>
                        <p>User</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <iframe src="http://166.111.80.119:38081/nagios/cgi-bin/status.cgi?hostgroup=all&style=hostdetail" style="width: 100%; height: 1000px"></iframe>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

    <a class="navbar-brand" href="/Web/nagios/monitor.aspx">Main</a>
    <a class="navbar-brand"></a>
    <a class="navbar-brand" href="/Web/nagios/host.aspx">Host</a>
    <a class="navbar-brand"></a>
    <a class="navbar-brand" href="/Web/nagios/group.aspx">Group</a>
</asp:Content>
