<%@ Page Title="" Language="C#" MasterPageFile="~/UI/LibraryManegment.Master" AutoEventWireup="true" CodeBehind="BorrowBook.aspx.cs" Inherits="PersonaLibraryManagmentApp.UI.BorrowBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Enter member no</td>
            <td>
                <asp:TextBox ID="borrwMemNoTextBox" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Select a Book</td>
            <td>
                <asp:DropDownList ID="bookDropDownList" runat="server" Width="173px" Height="23px" AutoPostBack="True" OnSelectedIndexChanged="bookDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
        </tr>
         <tr>
            <td>Author</td>
            <td>
                <asp:TextBox ID="borrowAuthorTextBox" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Publisher</td>
            <td>
                <asp:TextBox ID="borrowPublisherTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="borrowButton" runat="server" Text="Borrow" OnClick="borrowButton_Click" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="borrowSaveMessLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
