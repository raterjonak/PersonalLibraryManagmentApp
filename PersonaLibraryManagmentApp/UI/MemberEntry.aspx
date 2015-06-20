<%@ Page Title="" Language="C#" MasterPageFile="~/UI/LibraryManegment.Master" AutoEventWireup="true" CodeBehind="MemberEntry.aspx.cs" Inherits="PersonaLibraryManagmentApp.UI.MemberEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td>Number :</td>
            <td>
                <asp:TextBox ID="numberTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Name :</td>
            <td>
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="memberSaveButton" runat="server" Text="Save" OnClick="memberSaveButton_Click" /></td>
            <td>
                <asp:Button ID="memberSaveCancelButton" runat="server" Text="Cancel" /></td>
        </tr>
        <tr>
            <td><asp:Label ID="messageShowLabel" runat="server" Text=""></asp:Label></td>

        </tr>
    </table>

</asp:Content>
