<%@ Page Title="" Language="C#" MasterPageFile="~/UI/LibraryManegment.Master" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="PersonaLibraryManagmentApp.UI.ReturnBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Enter member no</td>
            <td>
            <asp:TextBox ID="returnMemNoTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td>
        </tr>
            <tr>
                <td></td>
                
                <td>
                    <asp:Button ID="showBorrowedBooksButton" runat="server" Width="174px" Text="Show Borrowed Books" OnClick="showBorrowedBooksButton_Click" /></td>
            </tr>
        <tr>
            <td>Borrowed booklist</td>
            <td>
                <asp:DropDownList ID="BorrowedBookDropDownList" runat="server" Width="174px" AutoPostBack="True"></asp:DropDownList></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="ReturnButton" runat="server" Text="Return" OnClick="ReturnButton_Click" /></td>
            <td>
                <asp:Label ID="ReturnMesgLabel" runat="server" Text=""></asp:Label></td>
        </tr>
    </table>
</asp:Content>
