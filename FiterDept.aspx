<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FiterDept.aspx.cs" Inherits="webapp2026ELE.FiterDept" %>

<html4>

<head runat="server">
    <title></title>
</head>
    <style>
    body {
        background: url('data:image/jpeg;base64,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');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        font-family: 'Poppins', sans-serif;
        height: 100vh;
        margin: 0;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .glass-panel {
        background: rgba(255, 255, 255, 0.15);
        backdrop-filter: blur(15px);
        -webkit-backdrop-filter: blur(15px);
        border: 1px solid rgba(255, 255, 255, 0.2);
        border-radius: 20px;
        padding: 40px;
        width: 450px;
        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
        text-align: center;
        color: white;
    }
    h2 {
        font-size: 24px;
        margin-bottom: 30px;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
    }
    .btn-glass {
        background: rgba(255, 255, 255, 0.2) !important;
        border: 1px solid rgba(255, 255, 255, 0.4) !important;
        border-radius: 10px !important;
        color: white !important;
        font-weight: 600;
        cursor: pointer;
        transition: 0.4s;
        margin: 10px;
        backdrop-filter: blur(5px);
    }
    .btn-glass:hover {
        background: rgba(255, 255, 255, 0.4) !important;
        transform: scale(1.05);
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }
    .glass-grid {
        background: rgba(255, 255, 255, 0.1) !important;
        border: none !important;
        border-radius: 10px;
        overflow: hidden;
        margin-top: 20px;
        color: white !important;
    }
    .glass-grid th {
        background: rgba(0, 0, 0, 0.3) !important;
        color: #fff !important;
        padding: 10px;
    }
    .glass-grid td {
        padding: 8px;
        border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    }
</style>
<body>
    <form id="form1" runat="server">
        <div class="glass-panel">
            <h2>Filter Department Wise</h2>    
            <div class="dept-buttons">
                <asp:Button ID="bcom" runat="server" OnClick="bcom_click" Text="BCOM" CssClass="btn-glass" Height="40px" Width="100px" />
                <asp:Button ID="bsc" runat="server" OnClick="bsc_click" Text="BSC" CssClass="btn-glass" Height="40px" Width="100px" />
                <br />
                <asp:Button ID="bba" runat="server" OnClick="bba_click" Text="BBA" CssClass="btn-glass" Height="40px" Width="100px" />
                <asp:Button ID="ba" runat="server" OnClick="ba_click" Text="BA" CssClass="btn-glass" Height="40px" Width="100px" />
            </div>
            <asp:Label ID="lb1" runat="server" ForeColor="Yellow" Font-Bold="true"></asp:Label>
            <br />
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="true" CssClass="glass-grid" Width="100%">
                <HeaderStyle Font-Bold="True" />
            </asp:GridView>
            <br />
            <div class="nav-buttons">
                <asp:Button ID="ad" runat="server" OnClick="ad_click" Text="Admin" CssClass="btn-glass" Height="35px" Width="110px" />
                <asp:Button ID="lg" runat="server" OnClick="lo_click" Text="Logout" CssClass="btn-glass" Height="35px" Width="110px" />
            </div>
        </div>
    </form>
</body>
</html4>
