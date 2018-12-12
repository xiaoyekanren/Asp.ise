<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="cluster.aspx.cs" Inherits="Zzm.Web.cluster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-3.jpg">
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
                <li class="active">
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
    <asp:Label ID="Label1"  runat="server" Text="集群机器配置情况"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" class="table table-striped" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
            <asp:BoundField DataField="HostName" HeaderText="HostName" SortExpression="HostName" />
            <asp:BoundField DataField="账户" HeaderText="账户" SortExpression="账户" />
            <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
            <asp:BoundField DataField="校园网地址" HeaderText="校园网地址" SortExpression="校园网地址" />
            <asp:BoundField DataField="MEMORY/G" HeaderText="MEMORY/G" SortExpression="MEMORY/G" />
            <asp:BoundField DataField="HARDDISK/T" HeaderText="HARDDISK/T" SortExpression="HARDDISK/T" />
        </Columns>
    </asp:GridView>

    <br />

    <asp:Image ID="Image1" runat="server" ImageUrl="\assets\img\拓扑.jpg" Height="543px" Width="750" EnableTheming="True" ToolTip="集群服务器拓扑图" />
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Hadoop 2.7.5" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView2" runat="server" class="table table-striped" DataSourceID="SqlDataSource2" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Hadoop_Path" HeaderText="Hadoop_Path" SortExpression="Hadoop_Path" />
            <asp:BoundField DataField="Hadoop_Role" HeaderText="Hadoop_Role" SortExpression="Hadoop_Role" />
            <asp:BoundField DataField="Hadoop_port" HeaderText="Hadoop_port" SortExpression="Hadoop_port" />
            <asp:BoundField DataField="Hadoop_Data_Path" HeaderText="Hadoop_Data_Path" SortExpression="Hadoop_Data_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" Text="Cassandra 3.10" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView3" runat="server" class="table table-striped" DataSourceID="SqlDataSource3" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Cassandra_Path" HeaderText="Cassandra_Path" SortExpression="Cassandra_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label4" runat="server" Text="Spark 2.1.1" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView4" runat="server" class="table table-striped" DataSourceID="SqlDataSource4" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Spark_Path" HeaderText="Spark_Path" SortExpression="Spark_Path" />
            <asp:BoundField DataField="Spark_Role" HeaderText="Spark_Role" SortExpression="Spark_Role" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label5" runat="server" Text="Zookeeper 3.5.2" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView5" runat="server" class="table table-striped" DataSourceID="SqlDataSource5" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Zookeeper_Role" HeaderText="Zookeeper_Role" SortExpression="Zookeeper_Role" />
            <asp:BoundField DataField="Zookeeper_Path" HeaderText="Zookeeper_Path" SortExpression="Zookeeper_Path" />
            <asp:BoundField DataField="Zookeeper_Data_Path" HeaderText="Zookeeper_Data_Path" SortExpression="Zookeeper_Data_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label6" runat="server" Text="Kafka 2.12-0.10.2.1" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView6" runat="server" class="table table-striped" DataSourceID="SqlDataSource6" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Kafka_Role" HeaderText="Kafka_Role" SortExpression="Kafka_Role" />
            <asp:BoundField DataField="Kafka_Path" HeaderText="Kafka_Path" SortExpression="Kafka_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label7" runat="server" Text="Storm 1.1.0" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView7" runat="server" class="table table-striped" DataSourceID="SqlDataSource7" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Storm_Path" HeaderText="Storm_Path" SortExpression="Storm_Path" />
            <asp:BoundField DataField="Storm_Role" HeaderText="Storm_Role" SortExpression="Storm_Role" />
            <asp:BoundField DataField="Storm_Data_Path" HeaderText="Storm_Data_Path" SortExpression="Storm_Data_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label8" runat="server" Text="Scala 2.12.2" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView8" runat="server" class="table table-striped" DataSourceID="SqlDataSource8" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Scala_Path" HeaderText="Scala_Path" SortExpression="Scala_Path" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label9" runat="server" Text="Mysql" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView9" runat="server" class="table table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource9">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="Mysql_Conf_Path" HeaderText="Mysql_Conf_Path" SortExpression="Mysql_Conf_Path" />
            <asp:BoundField DataField="Mysql_Data_Path" HeaderText="Mysql_Data_Path" SortExpression="Mysql_Data_Path" />
            <asp:BoundField DataField="Mysql_User" HeaderText="Mysql_User" SortExpression="Mysql_User" />
            <asp:BoundField DataField="校园网地址" HeaderText="校园网地址" SortExpression="校园网地址" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label10" runat="server" Text="Ftp" Font-Bold="True" Font-Size="Large"></asp:Label>
    <asp:GridView ID="GridView10" runat="server" class="table table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource10">
        <Columns>
            <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
            <asp:BoundField DataField="校园网地址" HeaderText="校园网地址" SortExpression="校园网地址" />
            <asp:BoundField DataField="Ftp_User" HeaderText="Ftp_User" SortExpression="Ftp_User" />
            <asp:BoundField DataField="Ftp_Path" HeaderText="Ftp_Path" SortExpression="Ftp_Path" />
            <asp:BoundField DataField="Ftp_Authorized" HeaderText="Ftp_Authorized" SortExpression="Ftp_Authorized" />
            <asp:BoundField DataField="Ftp_Info" HeaderText="Ftp_Info" SortExpression="Ftp_Info" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT Server_detail.IP, Public_Cluster.HostName, Public_Cluster.账户, Server_detail.CPU, Public_Cluster.校园网地址, Server_detail.[MEMORY/G], Server_detail.[HARDDISK/T] FROM Server_detail INNER JOIN Public_Cluster ON Server_detail.IP = Public_Cluster.IP地址 AND Server_detail.PLACE = Public_Cluster.PLACE WHERE (Server_detail.IP &lt;&gt; '192.168.3.29') ORDER BY Server_detail.IP"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Hadoop_Path, Hadoop_Role, Hadoop_port, Hadoop_Data_Path FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Cassandra_Path FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址,  Spark_Path, Spark_Role FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址,Zookeeper_Role, Zookeeper_Path, Zookeeper_Data_Path FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Kafka_Role, Kafka_Path FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Storm_Path, Storm_Role, Storm_Data_Path FROM Public_Cluster WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Scala_Path FROM Public_Cluster  WHERE (IP地址 &lt;&gt; '192.168.3.29') ORDER BY IP地址"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP地址, Mysql_Conf_Path, Mysql_Data_Path, Mysql_User, 校园网地址 FROM Public_Cluster WHERE (IP地址 = '192.168.10.10')"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT DISTINCT IP地址, 校园网地址, Ftp_User, Ftp_Path, Ftp_Authorized, Ftp_Info FROM Public_Cluster WHERE (IP地址 = '192.168.3.29')"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

 <a class="navbar-brand" href="#">集群列表</a>
    </asp:Content>