<%@ Page Title="" Language="C#" MasterPageFile="~/SiteElectro.Master" AutoEventWireup="true" CodeBehind="wfHome.aspx.cs" Inherits="AtcWln.wfHome" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Full" Font-Names="Times New Roman" Font-Size="20pt" ForeColor="Black" Height="556px" OnSelectionChanged="Calendar1_SelectionChanged" SelectionMode="DayWeekMonth" TitleFormat="Month" Width="973px" NextPrevFormat="FullMonth" ShowGridLines="True">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>
</asp:Content>
