<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="POE2.Home" %>

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
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
  <li><a href="home.aspx">Home</a></li>
  <li><a href="Approve.aspx">Approve</a></li>
  <li><a href="Claim.aspx">File for a claim</a></li>
  <li><a class="active" href="about.aspx">Track</a></li>
</ul>
        </div>
        <div class="Nav">
            &nbsp;&nbsp;
            </div>
    </form>
</body>
</html>
