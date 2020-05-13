<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DS_MH.aspx.cs" Inherits="DS_MH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="text-align: center; margin-left: 25px">
        DANH SÁCH MÔN HỌC</p>
    <p>
        Mã môn học:
        <asp:TextBox ID="TextBox1" runat="server" Width="142px"></asp:TextBox>
    </p>
    <p style="margin-left: 0px">
        Tên môn học:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" style="text-align: left" AutoGenerateColumns="False" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" PageSize="3">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Thêm" 
            Width="85px" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Lưu" 
            Width="67px" />
        <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Xóa" 
            Width="66px" />
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Sửa" 
            Width="71px" />
    </p>
</asp:Content>

