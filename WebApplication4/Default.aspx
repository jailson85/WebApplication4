<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:GridView ID="ClienteGridView" runat="server" AutoGenerateColumns="False"
    DataKeyNames="id" 
    onrowcancelingedit="IAGridView_RowCancelingEdit" 
    onrowediting="IAGridView_RowEditing"             
    onrowdeleting="IAGridView_RowDeleting" 
    onrowupdating="IAGridView_RowUpdating">
       
    <Columns>
    <asp:TemplateField HeaderText="Cod.">
    <ItemTemplate>    <%#Container.DataItemIndex+1 %>    </ItemTemplate>
    </asp:TemplateField>
    <asp:TemplateField HeaderText="Titulo do Filme">
    <ItemTemplate>    <%#Eval("nome") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtnome" runat="server" Text='<%#Eval("nome") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>    
     <asp:TemplateField HeaderText="País de Origem">
    <ItemTemplate>    <%#Eval("endereco") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtendereco" runat="server" Text='<%#Eval("endereco") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
     <asp:TemplateField HeaderText="Sinopse">
    <ItemTemplate>    <%#Eval("sinopse") %>    </ItemTemplate>
    <EditItemTemplate>
    <asp:TextBox ID="txtsinopse" runat="server" Text='<%#Eval("sinopse") %>'></asp:TextBox>
    </EditItemTemplate>
    </asp:TemplateField>
    <asp:CommandField ShowEditButton="true" ButtonType ="Image" 
        EditImageUrl="Imagem/editar.jpg" 
        UpdateImageUrl="Imagem/aceitar.jpg"
        CancelImageUrl="Imagem/erro.jpg" HeaderText="Editar" />
    <asp:CommandField ShowDeleteButton="true" ButtonType="Image" DeleteImageUrl="Imagem/erro.jpg" HeaderText="Deletar" />  
    </Columns>
    </asp:GridView>

</asp:Content>
