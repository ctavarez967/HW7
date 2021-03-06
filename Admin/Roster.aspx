﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Blackhawks.master" AutoEventWireup="false" CodeFile="Roster.aspx.vb" Inherits="login_Roster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <asp:SqlDataSource ID="Roster_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW7 %>" DeleteCommand="DELETE FROM [ctavarez_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [ctavarez_HW7] ([playerNumber], [playerName], [playerPosition], [playerHeight], [playerWeight], [playerAge], [playerBirthPlace]) VALUES (@playerNumber, @playerName, @playerPosition, @playerHeight, @playerWeight, @playerAge, @playerBirthPlace)" SelectCommand="SELECT * FROM [ctavarez_HW7] WHERE ([playerID] = @playerID)" UpdateCommand="UPDATE [ctavarez_HW7] SET [playerNumber] = @playerNumber, [playerName] = @playerName, [playerPosition] = @playerPosition, [playerHeight] = @playerHeight, [playerWeight] = @playerWeight, [playerAge] = @playerAge, [playerBirthPlace] = @playerBirthPlace WHERE [playerID] = @playerID">
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
                <SelectParameters>
                    <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
                </SelectParameters>
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
        </asp:SqlDataSource>
     <div class="roster" >
            <br/>
            <asp:Label CssClass="deletedPlayerErrorMessage" ID="lbl_deletedPlayer" runat="server"></asp:Label>
          
        <asp:DetailsView ID="DetailsView_Roster" HorizontalAlign ="Center" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="playerID" DataSourceID="Roster_DataSource"  Width="420pt">
            <Fields>
                <asp:TemplateField HeaderText="Number" SortExpression="playerNumber">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_number_edit" runat="server" Text='<%# Bind("playerNumber") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_number_edit" runat="server" ErrorMessage="Please Enter the Player's Number!" CssClass="validatoionError" ControlToValidate="txt_number_edit"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_number_insert" runat="server" Text='<%# Bind("playerNumber") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_number_insert" runat="server" ErrorMessage="Please Enter the Player's Number!" CssClass="validatoionError" ControlToValidate="txt_number_insert"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_number" runat="server" Text='<%# Bind("playerNumber") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name" SortExpression="playerName">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_name_edit" runat="server" Text='<%# Bind("playerName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_name_edit" runat="server" ErrorMessage="Please Enter the Player's Name!" CssClass="validatoionError" ControlToValidate="txt_name_edit"></asp:RequiredFieldValidator>                          
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_name_insert" runat="server" Text='<%# Bind("playerName") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_name_insert" runat="server" ErrorMessage="Please Enter the Player's Name!" CssClass="validatoionError" ControlToValidate="txt_name_insert"></asp:RequiredFieldValidator>                          
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_name" runat="server" Text='<%# Bind("playerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Position" SortExpression="playerPosition">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_position_edit" runat="server" Text='<%# Bind("playerPosition") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_position_edit" runat="server" ErrorMessage="Please Enter the Player's Position!" CssClass="validatoionError" ControlToValidate="txt_position_edit"></asp:RequiredFieldValidator>                                                      
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_position_insert" runat="server" Text='<%# Bind("playerPosition") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_position_insert" runat="server" ErrorMessage="Please Enter the Player's Position!" CssClass="validatoionError" ControlToValidate="txt_position_insert"></asp:RequiredFieldValidator>                          
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_position" runat="server" Text='<%# Bind("playerPosition") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Height" SortExpression="playerHeight">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_height_edit" runat="server" Text='<%# Bind("playerHeight") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_height_edit" runat="server" ErrorMessage="Please Enter the Player's Height!" CssClass="validatoionError" ControlToValidate="txt_height_edit"></asp:RequiredFieldValidator>                                                      
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_height_insert" runat="server" Text='<%# Bind("playerHeight") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_height_insert" runat="server" ErrorMessage="Please Enter the Player's Height!" CssClass="validatoionError" ControlToValidate="txt_height_insert"></asp:RequiredFieldValidator>                                                      
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_height" runat="server" Text='<%# Bind("playerHeight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Weight" SortExpression="playerWeight">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_weight_edit" runat="server" Text='<%# Bind("playerWeight") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_weight_edit" runat="server" ErrorMessage="Please Enter the Player's Weight!" CssClass="validatoionError" ControlToValidate="txt_weight_edit"></asp:RequiredFieldValidator>                                                                                  
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_weight_insert" runat="server" Text='<%# Bind("playerWeight") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_weight_insert" runat="server" ErrorMessage="Please Enter the Player's Weight!" CssClass="validatoionError" ControlToValidate="txt_weight_insert"></asp:RequiredFieldValidator>                                                                                                              
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_weight" runat="server" Text='<%# Bind("playerWeight") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age" SortExpression="playerAge">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_age_edit" runat="server" Text='<%# Bind("playerAge") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_age_edit" runat="server" ErrorMessage="Please Enter the Player's Age!" CssClass="validatoionError" ControlToValidate="txt_age_edit"></asp:RequiredFieldValidator>                                                                                                              
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_age_insert" runat="server" Text='<%# Bind("playerAge") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_age_insert" runat="server" ErrorMessage="Please Enter the Player's Age!" CssClass="validatoionError" ControlToValidate="txt_age_insert"></asp:RequiredFieldValidator>                                                                                                              
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_age" runat="server" Text='<%# Bind("playerAge") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="BirthPlace" SortExpression="playerBirthPlace">
                    <EditItemTemplate>
                        <asp:TextBox ID="txt_birthPlace_edit" runat="server" Text='<%# Bind("playerBirthPlace") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_birthPlace_edit" runat="server" ErrorMessage="Please Enter the Player's Birth Place!" CssClass="validatoionError" ControlToValidate="txt_birthPlace_edit"></asp:RequiredFieldValidator>                                                                                                                                          
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="txt_birthPlace_insert" runat="server" Text='<%# Bind("playerBirthPlace") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RFV_txt_birthPlace_insert" runat="server" ErrorMessage="Please Enter the Player's Birth Place!" CssClass="validatoionError" ControlToValidate="txt_birthPlace_insert"></asp:RequiredFieldValidator>                                                                                                                                                                      
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lbl_birthPlace" runat="server" Text='<%# Bind("playerBirthPlace") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>

    </div>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>

</asp:Content>

