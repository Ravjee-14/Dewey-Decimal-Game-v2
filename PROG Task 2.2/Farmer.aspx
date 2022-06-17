<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Farmer.aspx.cs" Inherits="PROG_Task_2._2.Farmer" %>

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
        .auto-style4 {
            width: 372px;
        }
        .auto-style5 {
            width: 173px;
        }
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            width: 173px;
            height: 26px;
        }
        .auto-style8 {
            width: 372px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="auto-style2">
                Welcome to Farm Central</p>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">Add a new product to your profile here</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Username</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUsername" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Product</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtProd" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Product Description</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtDesc" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Type of Product</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddTypeProd" runat="server">
                        <asp:ListItem>Brick</asp:ListItem>
                        <asp:ListItem>Mortar</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Date</td>
                <td class="auto-style4">
                    <asp:TextBox ID="dpDate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Quantity</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtQuantity" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">Price Per Unit</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPrice" runat="server" Width="270px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" Width="270px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View your Product here </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8">
                    <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" Width="372px" />
                </td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
