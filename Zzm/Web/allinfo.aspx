<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="allinfo.aspx.cs" Inherits="Zzm.Web.allinfo" %>

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
    <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle" DataSourceID="下拉列表" DataTextField="PLACE" DataValueField="PLACE" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True" align="left">
        <asp:ListItem Selected="True" Value="All" Text="All"></asp:ListItem>
    </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="table table-striped" DataKeyNames="ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
           <%-- <AlternatingRowStyle BackColor="#F7F7F7" />--%>
            <Columns>

                <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
                <asp:BoundField DataField="SYSTEM" HeaderText="SYSTEM" SortExpression="SYSTEM" />
                <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
                <asp:BoundField DataField="用途" HeaderText="用途" SortExpression="用途" />
                <asp:BoundField DataField="CPU线程" HeaderText="CPU线程" SortExpression="CPU线程" />
                <asp:BoundField DataField="MEMORY/G" HeaderText="MEMORY/G" SortExpression="MEMORY/G" />
                <asp:BoundField DataField="HARDDISK/T" HeaderText="HARDDISK/T" SortExpression="HARDDISK/T" />
                <asp:BoundField DataField="GPU型号" HeaderText="GPU型号" SortExpression="GPU型号" />
                <asp:BoundField DataField="服务器型号" HeaderText="服务器型号" SortExpression="服务器型号" />
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" InsertVisible="False" ReadOnly="True" Visible="false" />
                <%-- DataTextField="ID" --%>

                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="allinfo_most.aspx?ID={0}" Text="More" />

            </Columns>
           <%-- <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />--%>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT IP, SYSTEM, PLACE, CPU线程, [MEMORY/G], [HARDDISK/T], GPU型号, 服务器型号,  用途,ID FROM Server_detail ORDER BY IP" DeleteCommand="DELETE FROM Server_detail WHERE (ID = @ID)" UpdateCommand="UPDATE Server_detail SET IP = @IP, SYSTEM = @SYSTEM, PLACE = @PLACE, 使用者 = @使用者, 用途 = @用途, CPU = @CPU, [MEMORY/G] = '@[MEMORY/G]', [HARDDISK/T] = '@[HARDDISK/T]', GPU型号 = @GPU型号, 服务器型号 = '@服务器型号' WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="IP" />
            <asp:Parameter Name="SYSTEM" />
            <asp:Parameter Name="PLACE" />
            <asp:Parameter Name="使用者" />
            <asp:Parameter Name="用途" />
            <asp:Parameter Name="CPU" />
            <asp:Parameter Name="GPU型号" />
            <asp:Parameter Name="ID" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="下拉列表" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT DISTINCT PLACE FROM Server_detail "></asp:SqlDataSource>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

 <a class="navbar-brand" href="#">服务器列表</a>
    </asp:Content>
