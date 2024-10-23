<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Approve.aspx.cs" Inherits="POE2.Home"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lecturer_id" DataSourceID="SqlDataSource2" Width="712px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="lecturer_id" HeaderText="lecturer_id" ReadOnly="True" SortExpression="lecturer_id" />
                <asp:BoundField DataField="Lecturer_Name" HeaderText="Lecturer_Name" SortExpression="Lecturer_Name" />
                <asp:BoundField DataField="Lecturer_Surname" HeaderText="Lecturer_Surname" SortExpression="Lecturer_Surname" />
                <asp:BoundField DataField="Module" HeaderText="Module" SortExpression="Module" />
                <asp:BoundField DataField="Course" HeaderText="Course" SortExpression="Course" />
                <asp:BoundField DataField="Hours" HeaderText="Hours" SortExpression="Hours" />
                <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                <asp:BoundField DataField="File_name" HeaderText="File_name" SortExpression="File_name" />
                <asp:BoundField DataField="payrate" HeaderText="payrate" SortExpression="payrate" />
                <asp:DynamicField DataField="PDF_FILE" HeaderText="PDF_FILE" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Stores]"></asp:SqlDataSource>
    </form>
</body>
</html>
