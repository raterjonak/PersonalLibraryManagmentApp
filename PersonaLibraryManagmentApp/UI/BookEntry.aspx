<%@ Page Title="" Language="C#" MasterPageFile="~/UI/LibraryManegment.Master" AutoEventWireup="true" CodeBehind="BookEntry.aspx.cs" Inherits="PersonaLibraryManagmentApp.UI.BookEntry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Title</td>
            <td>
                <asp:TextBox ID="titleTextBox" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Author</td>
            <td>
                <asp:TextBox ID="authorTextBox" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Publisher</td>
            <td>
                <asp:TextBox ID="publisherTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="bookSaveButton" runat="server" Text="Save" OnClick="bookSaveButton_Click" /></td>
            <td>
                <asp:Button ID="cancelButton" runat="server" Text="Cancel" /></td>
            <td>
                <asp:Label ID="bookSaveMessLabel" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>
