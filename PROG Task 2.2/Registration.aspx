<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="PROG_Task_2._2.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 275px;
        }
        .auto-style3 {
            width: 117px;
        }
        .auto-style4 {
            width: 270px;
        }
        .auto-style5 {
            width: 324px;
        }
        .auto-style6 {
            width: 413px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Register </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td colspan="2">&nbsp;Choose who you are registering as </td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="ddRole" runat="server" Width="270px">
                            <asp:ListItem>Farmer</asp:ListItem>
                            <asp:ListItem>Employee</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">Username</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtUsername" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtPassword" runat="server" Width="270px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtName" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">Email</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEmail" runat="server" Width="270px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnRegister" runat="server" Text="Register" Width="270px" OnClick="btnRegister_Click" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
