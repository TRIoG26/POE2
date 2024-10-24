<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Claim.aspx.cs" Inherits="POE2.Claim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
                ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #111;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            height: 23px;
            width: 143px;
        }
        .auto-style5 {
            color: #000000;
        }
    </style>
</head>
 <ul>
  <li><a href="home.aspx">Home</a></li>
  <li><a href="Approve.aspx">Approve</a></li>
  <li><a href="Claim.aspx">File for a claim</a></li>
  <li><a class="active" href="Track.aspx">Track</a></li>
</ul>
<body>
    <form id="form1" runat="server">
        <strong>
        <asp:Label ID="Label6" runat="server" Text="Lecturer claim system" CssClass="auto-style5"></asp:Label>
        </strong>
        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Lecturer Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Lecturer Last Name:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Lecturer ID:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Module:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Course:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Hours:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Payrate:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                    <asp:Button ID="Button2" runat="server" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" Text="Message:"></asp:Label>
    </form>
</body>
</html>
