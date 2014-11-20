<%@ Page Title="" Language="VB" MasterPageFile="~/Blackhawks.master" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
          
        <asp:sqldatasource runat="server" ID="HW7_Search_DataSource" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW7 %>" DeleteCommand="DELETE FROM [ctavarez_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [ctavarez_HW7] ([playerNumber], [playerName], [playerPosition], [playerHeight], [playerWeight], [playerAge], [playerBirthPlace]) VALUES (@playerNumber, @playerName, @playerPosition, @playerHeight, @playerWeight, @playerAge, @playerBirthPlace)" SelectCommand="SELECT * FROM [ctavarez_HW7]" UpdateCommand="UPDATE [ctavarez_HW7] SET [playerNumber] = @playerNumber, [playerName] = @playerName, [playerPosition] = @playerPosition, [playerHeight] = @playerHeight, [playerWeight] = @playerWeight, [playerAge] = @playerAge, [playerBirthPlace] = @playerBirthPlace WHERE [playerID] = @playerID">
        <DeleteParameters>
            <asp:Parameter Name="playerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="playerNumber" Type="String" />
            <asp:Parameter Name="playerName" Type="String" />
            <asp:Parameter Name="playerPosition" Type="String" />
            <asp:Parameter Name="playerHeight" Type="String" />
            <asp:Parameter Name="playerWeight" Type="String" />
            <asp:Parameter Name="playerAge" Type="String" />
            <asp:Parameter Name="playerBirthPlace" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="playerNumber" Type="String" />
            <asp:Parameter Name="playerName" Type="String" />
            <asp:Parameter Name="playerPosition" Type="String" />
            <asp:Parameter Name="playerHeight" Type="String" />
            <asp:Parameter Name="playerWeight" Type="String" />
            <asp:Parameter Name="playerAge" Type="String" />
            <asp:Parameter Name="playerBirthPlace" Type="String" />
            <asp:Parameter Name="playerID" Type="Int32" />
        </UpdateParameters>
        </asp:sqldatasource>
        <div class="transbox3">

      <% If Not IsPostBack Then%>
                &nbsp;&nbsp;&nbsp; 
                    <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search for Palyer:<asp:TextBox ID="tbPlayer" runat="server" AutoPostBack="true"></asp:TextBox>
                    <br />
      <% Else %>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Search for Another Player:<asp:TextBox ID="tbPlayer2" runat="server" AutoPostBack="true"></asp:TextBox>
                    <br />
                    <br />
         <asp:GridView ID="Search_GridView" CssClass="gridview" HorizontalAlign="Center" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="HW7_Search_DataSource" Height="275px" Width="550px">
            <Columns>
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:BoundField DataField="playerBirthPlace" HeaderText="BirthPlace" SortExpression="playerBirthPlace" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="~/Roster.aspx?playerID={0}" Text="View" />
            </Columns>
        </asp:GridView>
      <% End If %>

            </div>

</asp:Content>

