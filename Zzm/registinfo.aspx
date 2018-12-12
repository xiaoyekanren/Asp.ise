<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registinfo.aspx.cs" Inherits="Zzm.registinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>



    <table class="table table-hover class">
        <tr>
            <th class="auto-style1">位置</th>
            <th class="auto-style1">IP地址</th>
            <th class="auto-style1">使用者</th>
            <th class="auto-style1">用途</th>
            <th class="auto-style1">开始日期</th>
            <th></th>
            <th class="auto-style1">截止日期</th>
            <th class="auto-style1">备注</th>
            <th class="auto-style1"></th>
        </tr>
        <tr>
            <td>
                <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        默认 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="#">功能</a></li>
                        <li><a href="#">另一个功能</a></li>
                        <li><a href="#">其他</a></li>
                        <li class="divider"></li>
                        <li><a href="#">分离的链接</a></li>
                    </ul>
                </div>
            </td>
            <td>
                <input type="text" class="form-control" placeholder="test" id="TXTIP" />
            </td>
            <td>
                <input type="text" class="form-control" placeholder="test" id="TXTUSER" />
            </td>
            <td>
                <input type="text" class="form-control" placeholder="test" id="TXTPURPOSE" />
            </td>
            <td>
                <input type="text" class="form-control" placeholder="test" id="TXTSTARTDATE" />
            </td>
            <td>&nbsp—&nbsp</td>
            <td>
                <input type="text" class="form-control" placeholder="test" id="TXTREMARKS" />
            </td>
            <td>
                <button type="button" class="btn">提交</button>
            </td>
        </tr>
    </table>


    <table  class="table table-hover class">
        <tr>
            <td>第一行</td>
        </tr>

        <tr>
            <td>第二行</td>
        </tr>

        <tr>
            <td>第三行</td>
        </tr>

        <tr>
            <td>第四行</td>
        </tr>

        <tr>
            <td>第五行</td>
        </tr>

        <tr>
            <td>第六行</td>
        </tr>
        <tr>
            <td>第七行</td>
        </tr>


    </table>


</body>
</html>
