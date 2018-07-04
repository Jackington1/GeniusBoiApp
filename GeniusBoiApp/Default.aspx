<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GeniusBoiApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

    <div class="jumbotron">
        <h1>SKILLZ BOI</h1>
        <a href="http://hemansings.com">
        <asp:Image runat="server" src="Images/skills.jpg" imageurl="hemansings.com" style="width: 120px; height: 62px; margin-right: 0px" />
        </a>
        <p class="lead">Add some Skillz.</p>
        <asp:Label runat="server" ID="lblWelcome"></asp:Label>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <asp:Label runat="server" ID="lblName" AssociatedControlID="txtName">Name:</asp:Label><asp:TextBox runat="server" ID="txtName" ></asp:TextBox><br />
        <asp:Label runat="server" ID="lblSkill" AssociatedControlID ="txtSkill">Skill:</asp:Label><asp:TextBox runat="server" ID="txtSkill" ></asp:TextBox><br />
        <asp:Label runat="server" ID="lblSkillHoursLearn" AssociatedControlID ="txtSkillHoursLearn">Skill Hours Learn:</asp:Label><asp:TextBox runat="server" ID="txtSkillHoursLearn" ></asp:TextBox><br />
        <asp:Label runat="server" ID="lblSkillHoursSpent" AssociatedControlID ="txtSkillHoursSpent">Skill Hours Spent:</asp:Label><asp:TextBox runat="server" ID="txtSkillHoursSpent" ></asp:TextBox><br />
        
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnGetSkills" runat="server" Text="Retrieve" OnClick="btnRetrieve_Click" />


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="pName" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <%--<asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />--%>
                <asp:BoundField DataField="pName" HeaderText="pName" SortExpression="pName" />
                <asp:BoundField DataField="sName" HeaderText="sName" SortExpression="sName" />
                <asp:BoundField DataField="sHoursLearn" HeaderText="sHoursLearn" SortExpression="sHoursLearn" />
                <asp:BoundField DataField="sHoursSpent" HeaderText="sHoursSpent" SortExpression="sHoursSpent" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

    </div>

</asp:Content>
