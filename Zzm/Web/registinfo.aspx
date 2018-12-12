<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site.Master" AutoEventWireup="true" CodeBehind="registinfo.aspx.cs" Inherits="Zzm.Web.registinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-2.jpg">

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
                <li class="active">
                    <a href="/Web/registinfo.aspx">
                        <i class="pe-7s-graph"></i>
                        <p>服务器使用情况</p>
                    </a>
                </li>
                <li>
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
    <div class="container-fluid">

        <table>
            <%--  border="1"--%>
            <tr>
                <th class="auto-style1">位置</th>
                <th class="auto-style1">&nbsp;&nbsp;&nbsp;IP地址</th>
                <th class="auto-style1">使用者</th>
                <th class="auto-style1">用途</th>
                <th class="auto-style1">开始日期</th>
                <th class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;截止日期</th>
                <th class="auto-style1">&nbsp;&nbsp;&nbsp;备注</th>
                <th class="auto-style1"></th>
            </tr>
            <tr>
                <td>
                    <%--<asp:TextBox ID="TXTPLACE" runat="server" Width="56"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1"  runat="server" DataSourceID="SqlDataSource1" DataTextField="PLACE" DataValueField="PLACE" Height="26px" AppendDataBoundItems="True" Width="74px">
                        <asp:ListItem>其他</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;
                    <asp:TextBox ID="TXTIP" runat="server" Width="120"></asp:TextBox>
                    <%--TextMode="Password"--%>
                    <asp:RequiredFieldValidator ID="rfvIP" runat="server" ErrorMessage="请输入IP" ControlToValidate="TXTIP">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TXTUSER" runat="server" Width="56"></asp:TextBox>
                    <%-- TextMode="Password"--%>
                    <asp:RequiredFieldValidator ID="rfvUSER" runat="server" ErrorMessage="请输入姓名" ControlToValidate="TXTUSER">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TXTPURPOSE" runat="server" Width="100"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPURPOSE" runat="server" ErrorMessage="请输入用途" ControlToValidate="TXTPURPOSE">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="TXTSTARTDATE" runat="server" Width="80"></asp:TextBox>
                    <%-- BorderStyle="Solid" 加粗--%>
                    <%--<asp:RequiredFieldValidator ID="rfvSTARTDATE" runat="server" ErrorMessage="请输入开始日期" ControlToValidate="TXTSTARTDATE">*</asp:RequiredFieldValidator>--%>
                </td>
                <td>—<asp:TextBox ID="TXTENDDATE" runat="server" Width="80"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TXTREMARKS" runat="server" Width="120"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSubmit" runat="server" Text="提交" OnClick="btnSubmit_Click" /></td>
            </tr>
        </table>

        <br />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList2" class="btn btn-default dropdown-toggle" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="PLACE" DataValueField="PLACE" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AppendDataBoundItems="True">
            <asp:ListItem Selected="True" Value="All" Text="All">All</asp:ListItem>
            <asp:ListItem>其他</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label1" runat="server" Text="服务器使用情况"></asp:Label>
        <asp:GridView ID="GridView1" runat="server"  class="table table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
            <%--<AlternatingRowStyle BackColor="#F7F7F7" />--%>
            <Columns>
                <asp:BoundField DataField="PLACE" HeaderText="PLACE" SortExpression="PLACE" />
                <asp:BoundField DataField="IP地址" HeaderText="IP地址" SortExpression="IP地址" />
                <asp:BoundField DataField="USER" HeaderText="USER" SortExpression="USER" />
                <asp:BoundField DataField="开始日期" HeaderText="开始日期" SortExpression="开始日期" />
                <asp:BoundField DataField="截止日期" HeaderText="截止日期" SortExpression="截止日期" />
                <asp:BoundField DataField="用途" HeaderText="用途" SortExpression="用途" />
                <asp:BoundField DataField="备注" HeaderText="备注" SortExpression="备注" />
            </Columns>
            <%--<FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />--%>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT DISTINCT PLACE FROM Server_detail"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT PLACE, IP地址, [USER], 开始日期, 截止日期, 用途, 备注 FROM [use] WHERE ([USER] &lt;&gt; '[冯飘]') ORDER BY 开始日期 DESC, IP地址, PLACE"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ZzmConnectionString %>" SelectCommand="SELECT DISTINCT PLACE FROM Server_detail"></asp:SqlDataSource>

    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a class="navbar-brand" href="#">使用纪录登记</a>
</asp:Content>
