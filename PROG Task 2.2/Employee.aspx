<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="PROG_Task_2._2.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 800px;
        }
        .auto-style5 {
            width: 23px;
        }
        .auto-style6 {
            width: 141px;
        }
        .auto-style7 {
            width: 88px;
        }
        .auto-style8 {
            width: 68px;
        }
        .auto-style9 {
            width: 331px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="auto-style2">
                Welcome to farm Central</p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9" rowspan="6">
                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Farmer</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">User Name</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnFill" runat="server" OnClick="btnFill_Click" Text="FILL" Width="66px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">Password</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="168px" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">Username</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtViewUser" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View Farmer Products" />
                    </td>
                    <td>View By:
                        <asp:TextBox ID="date1" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:TextBox ID="date2" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:Button ID="btnDateASC" runat="server" OnClick="btnDateASC_Click" Text="View in Date Range" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Brick</asp:ListItem>
                            <asp:ListItem>Mortar</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Button ID="btnProdAsc" runat="server" OnClick="btnProdAsc_Click" Text="View by Product Type" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td colspan="4">
                        <asp:GridView ID="GridView2" runat="server">
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
