<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="vpninfo.aspx.cs" Inherits="Zzm.Web.vpninfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-4.jpg">

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
                <li >
                    <a href="/Web/cluster.aspx">
                        <i class="pe-7s-note2"></i>
                        <p>公用集群</p>
                    </a>
                </li>
                <li class="active">
                    <a href="/Web/vpninfo.aspx">
                        <i class="pe-7s-news-paper"></i>
                        <p>VPN</p>
                    </a>
                </li>
                <li>
                    <a href="/Web/nagios/monitor.aspx">
                        <i class="pe-7s-science"></i>
                        <p>Nagios</p>
                    </a>
                </li>
                <li  class="active-pro">
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
    <asp:DropDownList ID="DropDownList1" runat="server" class="btn dropdown-toggle"  AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Selected="True">All</asp:ListItem>
        <asp:ListItem>科南楼B103</asp:ListItem>
        <asp:ListItem>11-430</asp:ListItem>
        <asp:ListItem>Fit-1-106</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" class="table table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <%--<AlternatingRowStyle BackColor="#F7F7F7" />--%>
        <Columns>
            <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="类型" HeaderText="类型" SortExpression="类型" />
            <asp:BoundField DataField="帐号" HeaderText="帐号" SortExpression="帐号" />
            <asp:BoundField DataField="允许最大访问数" HeaderText="允许最大访问数" SortExpression="允许最大访问数" />
            <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
        </Columns>
<%--        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />--%>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT [PLACE], [IP地址], [类型], [帐号], [允许最大访问数], [备注] FROM [vpn]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

 <a class="navbar-brand" href="#">VPN列表</a>
    </asp:Content>
