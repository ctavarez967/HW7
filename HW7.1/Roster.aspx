<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Roster.aspx.vb" Inherits="DetailView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:SqlDataSource ID="Roster_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_ctavarez_HW7 %>" SelectCommand="SELECT * FROM [ctavarez_HW7] WHERE ([playerID] = @playerID)">

                <SelectParameters>
                    <asp:QueryStringParameter Name="playerID" QueryStringField="playerID" Type="Int32" />
                </SelectParameters>

        </asp:SqlDataSource>
            <br />
        <asp:DetailsView ID="DetailsView_Roster" runat="server" AutoGenerateRows="False" CssClass="auto-style1" DataKeyNames="playerID" DataSourceID="Roster_DataSource" >
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
            </Fields>
        </asp:DetailsView>
    </div>
    </form>
</body>
</html>
