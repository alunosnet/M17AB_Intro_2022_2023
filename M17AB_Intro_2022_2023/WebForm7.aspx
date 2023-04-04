<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="M17AB_Intro_2022_2023.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel1" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    nif:
                    <asp:TextBox Text='<%# Bind("nif") %>' runat="server" ID="nifTextBox" /><br />
                    password:
                    <asp:TextBox Text='<%# Bind("password") %>' runat="server" ID="passwordTextBox" /><br />
                    sal:
                    <asp:TextBox Text='<%# Bind("sal") %>' runat="server" ID="salTextBox" /><br />
                    fail_count:
                    <asp:TextBox Text='<%# Bind("fail_count") %>' runat="server" ID="fail_countTextBox" /><br />
                    fail_data:
                    <asp:TextBox Text='<%# Bind("fail_data") %>' runat="server" ID="fail_dataTextBox" /><br />
                    estado:
                    <asp:TextBox Text='<%# Bind("estado") %>' runat="server" ID="estadoTextBox" /><br />
                    perfil:
                    <asp:TextBox Text='<%# Bind("perfil") %>' runat="server" ID="perfilTextBox" /><br />
                    lnkRecuperar:
                    <asp:TextBox Text='<%# Bind("lnkRecuperar") %>' runat="server" ID="lnkRecuperarTextBox" /><br />
                    data_lnk:
                    <asp:TextBox Text='<%# Bind("data_lnk") %>' runat="server" ID="data_lnkTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    nif:
                    <asp:TextBox Text='<%# Bind("nif") %>' runat="server" ID="nifTextBox" /><br />
                    password:
                    <asp:TextBox Text='<%# Bind("password") %>' runat="server" ID="passwordTextBox" /><br />
                    sal:
                    <asp:TextBox Text='<%# Bind("sal") %>' runat="server" ID="salTextBox" /><br />
                    fail_count:
                    <asp:TextBox Text='<%# Bind("fail_count") %>' runat="server" ID="fail_countTextBox" /><br />
                    fail_data:
                    <asp:TextBox Text='<%# Bind("fail_data") %>' runat="server" ID="fail_dataTextBox" /><br />
                    estado:
                    <asp:TextBox Text='<%# Bind("estado") %>' runat="server" ID="estadoTextBox" /><br />
                    perfil:
                    <asp:TextBox Text='<%# Bind("perfil") %>' runat="server" ID="perfilTextBox" /><br />
                    lnkRecuperar:
                    <asp:TextBox Text='<%# Bind("lnkRecuperar") %>' runat="server" ID="lnkRecuperarTextBox" /><br />
                    data_lnk:
                    <asp:TextBox Text='<%# Bind("data_lnk") %>' runat="server" ID="data_lnkTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    email:
                    <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    nif:
                    <asp:Label Text='<%# Bind("nif") %>' runat="server" ID="nifLabel" /><br />
                    password:
                    <asp:Label Text='<%# Bind("password") %>' runat="server" ID="passwordLabel" /><br />
                    sal:
                    <asp:Label Text='<%# Bind("sal") %>' runat="server" ID="salLabel" /><br />
                    fail_count:
                    <asp:Label Text='<%# Bind("fail_count") %>' runat="server" ID="fail_countLabel" /><br />
                    fail_data:
                    <asp:Label Text='<%# Bind("fail_data") %>' runat="server" ID="fail_dataLabel" /><br />
                    estado:
                    <asp:Label Text='<%# Bind("estado") %>' runat="server" ID="estadoLabel" /><br />
                    perfil:
                    <asp:Label Text='<%# Bind("perfil") %>' runat="server" ID="perfilLabel" /><br />
                    lnkRecuperar:
                    <asp:Label Text='<%# Bind("lnkRecuperar") %>' runat="server" ID="lnkRecuperarLabel" /><br />
                    data_lnk:
                    <asp:Label Text='<%# Bind("data_lnk") %>' runat="server" ID="data_lnkLabel" /><br />
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [utilizadores] WHERE [id] = @id" InsertCommand="INSERT INTO [utilizadores] ([email], [nome], [morada], [nif], [password], [sal], [fail_count], [fail_data], [estado], [perfil], [lnkRecuperar], [data_lnk]) VALUES (@email, @nome, @morada, @nif, @password, @sal, @fail_count, @fail_data, @estado, @perfil, @lnkRecuperar, @data_lnk)" SelectCommand="SELECT * FROM [utilizadores]" UpdateCommand="UPDATE [utilizadores] SET [email] = @email, [nome] = @nome, [morada] = @morada, [nif] = @nif, [password] = @password, [sal] = @sal, [fail_count] = @fail_count, [fail_data] = @fail_data, [estado] = @estado, [perfil] = @perfil, [lnkRecuperar] = @lnkRecuperar, [data_lnk] = @data_lnk WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="nome" Type="String"></asp:Parameter>
                    <asp:Parameter Name="morada" Type="String"></asp:Parameter>
                    <asp:Parameter Name="nif" Type="String"></asp:Parameter>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sal" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="fail_count" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="fail_data"></asp:Parameter>
                    <asp:Parameter Name="estado" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="perfil" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="lnkRecuperar" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="data_lnk"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String"></asp:Parameter>
                    <asp:Parameter Name="nome" Type="String"></asp:Parameter>
                    <asp:Parameter Name="morada" Type="String"></asp:Parameter>
                    <asp:Parameter Name="nif" Type="String"></asp:Parameter>
                    <asp:Parameter Name="password" Type="String"></asp:Parameter>
                    <asp:Parameter Name="sal" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="fail_count" Type="Int32"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="fail_data"></asp:Parameter>
                    <asp:Parameter Name="estado" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="perfil" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="lnkRecuperar" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="data_lnk"></asp:Parameter>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
