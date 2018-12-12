<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="allinfo_most.aspx.cs" Inherits="Zzm.Web.allinfo_most" %>

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
                <li class="active">
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
    <div>
        <%--666--%>
        <asp:DetailsView ID="DetailsView1" runat="server" class="table table-striped" Height="50px" Width="555px" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
           <%-- <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />--%>
            <Fields>
                <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
                <asp:BoundField DataField="SYSTEM" HeaderText="SYSTEM" SortExpression="SYSTEM" />
                <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
                <asp:BoundField DataField="用途" HeaderText="用途" SortExpression="用途" />
                <asp:BoundField DataField="CPU" HeaderText="CPU" SortExpression="CPU" />
                <asp:BoundField DataField="CPU核数/个" HeaderText="CPU核数/个" SortExpression="CPU核数/个" />
                <asp:BoundField DataField="CPU线程" HeaderText="CPU线程" SortExpression="CPU线程" />
                <asp:BoundField DataField="CPU数量" HeaderText="CPU数量" SortExpression="CPU数量" />
                <asp:BoundField DataField="MEMORY/G" HeaderText="MEMORY/G" SortExpression="MEMORY/G" />
                <asp:BoundField DataField="HARDDISK/T" HeaderText="HARDDISK/T" SortExpression="HARDDISK/T" />
                <asp:BoundField DataField="GPU型号" HeaderText="GPU型号" SortExpression="GPU型号" />
                <asp:BoundField DataField="GPU数量" HeaderText="GPU数量" SortExpression="GPU数量" />
                <asp:BoundField DataField="服务器型号" HeaderText="服务器型号" SortExpression="服务器型号" />
                <asp:BoundField DataField="购买日期" HeaderText="购买日期" SortExpression="购买日期" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="资产编号" HeaderText="资产编号" SortExpression="资产编号" />
                <asp:BoundField DataField="SN" HeaderText="SN" SortExpression="SN" />
                <asp:BoundField DataField="RAID" HeaderText="RAID" SortExpression="RAID" />
            </Fields>
           <%-- <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />--%>
        </asp:DetailsView>
        <input type="button" onclick="Javascript: window.history.go(-1);" value="返回上一页" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP, SYSTEM, PLACE, 用途, CPU, [CPU核数/个], CPU线程, CPU数量, [MEMORY/G], [HARDDISK/T], GPU型号, GPU数量, 服务器型号, 购买日期, ID, 资产编号, SN, RAID FROM Server_detail WHERE (ID = @ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

 <a class="navbar-brand" href="#">服务器列表</a>
    </asp:Content>