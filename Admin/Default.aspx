﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Blackhawks.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <div class="transbox">
    <asp:sqldatasource runat="server" ID="HW7_Home_DataSource" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW7 %>" DeleteCommand="DELETE FROM [ctavarez_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [ctavarez_HW7] ([playerNumber], [playerName], [playerPosition], [playerHeight], [playerWeight], [playerAge], [playerBirthPlace]) VALUES (@playerNumber, @playerName, @playerPosition, @playerHeight, @playerWeight, @playerAge, @playerBirthPlace)" SelectCommand="SELECT * FROM [ctavarez_HW7]" UpdateCommand="UPDATE [ctavarez_HW7] SET [playerNumber] = @playerNumber, [playerName] = @playerName, [playerPosition] = @playerPosition, [playerHeight] = @playerHeight, [playerWeight] = @playerWeight, [playerAge] = @playerAge, [playerBirthPlace] = @playerBirthPlace WHERE [playerID] = @playerID">
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

                 <br />

         <asp:GridView ID="Home_GridView" HorizontalAlign="Center" cssclass="gridview" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="HW7_Home_DataSource" Height="275px" Width="550px">
            <Columns>
                <asp:BoundField DataField="playerNumber" HeaderText="Number" SortExpression="playerNumber" />
                <asp:BoundField DataField="playerName" HeaderText="Name" SortExpression="playerName" />
                <asp:BoundField DataField="playerPosition" HeaderText="Position" SortExpression="playerPosition" />
                <asp:BoundField DataField="playerBirthPlace" HeaderText="BirthPlace" SortExpression="playerBirthPlace" />
                <asp:HyperLinkField DataNavigateUrlFields="playerID" DataNavigateUrlFormatString="~/Admin/Roster.aspx?playerID={0}" Text="View" />
            </Columns>
        </asp:GridView>

    </div>

</asp:Content>

