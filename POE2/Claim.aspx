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
        <asp:Label ID="Label6" runat="server" Text="Lecturer claim system"></asp:Label>
        <br />
        <br />
        <div NS>
            <asp:Label ID="Label1" runat="server" Text="Lecturer Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Lecturer Surname:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        </div>
        <div class="MC">
            <asp:Label ID="Label3" runat="server" Text="Module:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label4" runat="server" Text="Course:"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
           <asp:Label ID="Label5" runat="server" Text="Hours:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            Payrate:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <div class ="submit">
            <input id="File1" type="file" />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
