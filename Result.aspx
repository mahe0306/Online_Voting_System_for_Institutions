<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="webapp2026ELE.Result" %>

<html4>
<head runat="server">
    <title></title>
</head>
    <style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-image: url('https://media.istockphoto.com/id/2155732337/vector/4-candidate-online-voting-results-flat-style-vector-illustration.jpg?s=612x612&w=0&k=20&c=_n1Xzu_lnr81bsJ93jOiq96sZFVg3F_82nmg3QpbBmo=');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    #form1 > div {
        background: rgba(255, 255, 255, 0.92);
        width: 90%;
        max-width: 1100px;
        margin: 40px auto;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.4);
        border-top: 8px solid #004a73;
    }
    h2 {
        color: #004a73;
        font-weight: 800;
        text-transform: uppercase;
        letter-spacing: 2px;
        margin-bottom: 25px;
        border-bottom: 2px solid #ddd;
        padding-bottom: 10px;
    }
    #lb1, #lbtovt, #lbvt, #lbnvt {
        display: inline-block;
        background: #f1f8ff;
        color: #0550ae;
        padding: 20px;
        margin: 10px;
        border-radius: 10px;
        font-size: 16px;
        font-weight: bold;
        min-width: 180px;
        border: 1px solid #d0e7ff;
        box-shadow: 0 4px 6px rgba(0,0,0,0.05);
    }
    input[type="submit"] {
        padding: 12px 25px;
        border: none;
        border-radius: 6px;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
        margin: 10px 5px;
        text-transform: uppercase;
    }
    #ctvt { background-color: #2ecc71; color: white; box-shadow: 0 4px #27ae60; }
    #dlvt { background-color: #e74c3c; color: white; box-shadow: 0 4px #c0392b; } 
    #ctvt:active, #dlvt:active {
        box-shadow: 0 0 #fff;
        transform: translateY(4px);
    }
    #lbf { font-weight: bold; color: #444; }
    #txf {
        padding: 10px;
        border: 2px solid #ddd;
        border-radius: 5px;
        width: 250px;
        margin: 0 10px;
    }
    #btnf { background-color: #34495e; color: white; }
    #gvVoters {
        width: 100% !important;
        background-color: white !important;
        margin: 30px 0;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
        border: none !important;
    }
    #gvVoters th {
        background-color: #004a73 !important; 
        color: white !important;
        padding: 15px;
        font-size: 15px;
    }
    #gvVoters td {
        padding: 12px;
        border-bottom: 1px solid #eee;
        color: #333;
    }
    #gvVoters tr:nth-child(even) { background-color: #f9f9f9; }
    #gvVoters tr:hover { background-color: #f1f1f1; }
    #rslo {
        background-color: transparent;
        color: #555;
        border: 2px solid #555 !important;
        margin-top: 20px;
    }
    #rslo:hover { background-color: #555; color: white; }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h2>RESULT DETAILS</h2>
                <br />
                <asp:Label ID="lb1" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                <br /><br/>
                <asp:Label ID="lbtovt" runat="server"></asp:Label>
                <br /><br />
                <asp:Label ID="lbvt" runat="server"></asp:Label>
                <br /><br />
                <asp:Label ID="lbnvt" runat="server"></asp:Label>
                <br /><br />
                <asp:Button ID="btnFinalResult" runat="server" Text="Final Result" OnClick="btnFinalResult_Click" CssClass="btn btn-primary" />
                <br />
                <asp:Button ID="ctvt" runat="server" OnClick="coutVotes_btn" Text="COUNT Votes" />
                <asp:Button ID="dlvt" runat="server" OnClick="delVotes_btn" Text="Reset Election" />
                <br /><br />
                <asp:Label ID="lbf" runat="server" Text="Party Name"></asp:Label>
                <asp:TextBox ID="txf" runat="server" placeholder="ex: DMK"></asp:TextBox>
                <asp:Button ID="btnf" runat="server" OnClick="btnfilter_click" Text="Filter" />
                <asp:Button ID="fldept" runat="server" OnClick="fltdept_click" Text="Filter DEPT Wise" BackColor="#0066FF" BorderColor="White" Height="41px" Width="191px" />
                <br /><br />
                <asp:GridView ID="gvVoters" runat="server" AutoGenerateColumns="true" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:Button ID="rslo" runat="server" OnClick="rstologin_click" Text="Back To Login" />
            </center>
        </div>
    </form>
</body>
</html4>
