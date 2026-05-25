<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VotingPhase.aspx.cs" Inherits="webapp2026ELE.VotingPhase" %>

<html4>
<head runat="server">
    <title></title>
</head>
    <style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Arial, sans-serif;
        background-image: url('https://images.unsplash.com/photo-1540910419892-4a36d2c3266c?auto=format&fit=crop&w=1350&q=80');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    #form1 > div {
        background: rgba(255, 255, 255, 0.95);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        width: 100%;
        max-width: 500px;
        border-top: 10px solid #2980b9; 
    }
 

    #rdc {
        width: 100%;
        text-align: left !important;
        margin: 20px 0;
        font-size: 18px;
        font-weight: 600;
        color: #34495e;
    }

    #rdc label {
        display: inline-block;
        padding: 10px 15px;
        cursor: pointer;
        transition: 0.2s;
        border-radius: 5px;
    }

    #rdc td {
        padding: 15px 10px;
        border-bottom: 1px solid #f1f1f1;
    }

    #rdc input[type="radio"] {
        transform: scale(1.5);
        margin-right: 15px;
        cursor: pointer;
    }

       #btnVote {
        background: linear-gradient(135deg, #2980b9, #3498db);
        color: white;
        border: none;
        padding: 15px 40px;
        font-size: 18px;
        font-weight: bold;
        border-radius: 50px;
        cursor: pointer;
        text-transform: uppercase;
        box-shadow: 0 5px 15px rgba(52, 152, 219, 0.4);
        transition: 0.3s ease;
        width: 80%;
    }

    #btnVote:hover {
        transform: scale(1.05);
        box-shadow: 0 8px 20px rgba(52, 152, 219, 0.6);
        background: linear-gradient(135deg, #3498db, #2980b9);
    }

    #btnVote:active {
        transform: scale(0.98);
    }

    #lbms {
        display: block;
        margin-top: 25px;
        font-weight: bold;
        color: #27ae60; 
        font-size: 16px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <h2>SELECT YOUR CANDIDATE</h2>
                <h3>Cast Your Vote For Right ONE 👆</h3>
                <asp:RadioButtonList ID="rdc" runat="server" RepeatDirection="Vertical" CellPadding="10">
                </asp:RadioButtonList>
                <br />
                <asp:Button ID="btnVote" runat="server" Text="Vote" OnClick="btnVote_Click" />
                <br /><br />
                <asp:Label ID="lbms" runat="server"></asp:Label>
            </center>
        </div>      
    </form>
</body>
</html4>
