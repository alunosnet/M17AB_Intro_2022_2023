<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="M17AB_Intro_2022_2023.adicionar" %>

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
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label Text='<%# Eval("id") %>' runat="server" ID="idLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    ano_escolaridade:
                    <asp:Label Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" 
                ConnectionString='<%$ ConnectionStrings:ConnectionString2 %>' 
                DeleteCommand="DELETE FROM [alunos] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [alunos] ([nome], [data_nascimento], [morada], [ano_escolaridade]) VALUES (@nome, @data_nascimento, @morada, @ano_escolaridade)" 
                SelectCommand="SELECT * FROM [alunos]" 
                UpdateCommand="UPDATE [alunos] SET [nome] = @nome, [data_nascimento] = @data_nascimento, [morada] = @morada, [ano_escolaridade] = @ano_escolaridade WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nome" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="data_nascimento"></asp:Parameter>
                    <asp:Parameter Name="morada" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade" Type="Int32"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome" Type="String"></asp:Parameter>
                    <asp:Parameter DbType="Date" Name="data_nascimento"></asp:Parameter>
                    <asp:Parameter Name="morada" Type="String"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
