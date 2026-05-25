<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="votes.aspx.cs" Inherits="websample.des" %>

<html4>
<head runat="server">
    <title>VoterDetails</title>
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f7f6;
        color: #333;
        margin: 0;
        padding: 20px;
    }
    h3 {
        color: #2c3e50;
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-bottom: 25px;
        border-bottom: 2px solid #3498db;
        padding-bottom: 10px;
    }
    input[type="text"], 
    input[type="number"], 
    input[type="password"] {
        padding: 10px;
        margin: 10px 5px;
        border: 1px solid #ddd;
        border-radius: 5px;
        width: 200px; 
        transition: border-color 0.3s;
    }
    input:focus {
        border-color: #3498db;
        outline: none;
        box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
    }
    input[type="submit"], .asp-button {
        cursor: pointer;
        border: none;
        border-radius: 5px;
        font-weight: bold;
        transition: transform 0.1s, background-color 0.3s;
        margin: 5px;
        padding: 10px 20px !important;
    }
    #btnInsert { background-color: #27ae60; color: white; }
    #btnUpdate { background-color: #f39c12; color: white; }
    #btnDelete { background-color: #e74c3c; color: white; }
    #btnClear { background-color: #95a5a6; color: white; }
    #shw { background-color: #3498db; color: white; width: auto !important; }
    #bck, #balo { background-color: #34495e; color: white; margin-top: 20px; }
    input[type="submit"]:hover {
        opacity: 0.9;
        transform: translateY(-1px);
    }
    #gv {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        border-radius: 8px;
        overflow: hidden; 
        border: none !important;
    }
    #gv th {
        padding: 12px;
        text-align: left;
    }
    #gv td {
        padding: 10px;
        border-bottom: 1px solid #eee;
    }
    #dlal {
        background-color: #e74c3c !important;
        color: white;
        margin-top: 15px;
    }
    #lblStatus {
        display: block;
        margin: 15px 0;
        font-weight: bold;
        color: #e67e22;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h3>ENTER THE VOTERS DETAILS</h3>
                    ID  : <asp:TextBox ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                    Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox> <br /><br />
                    Dept: <asp:TextBox ID="txtDept" runat="server"></asp:TextBox> 
                    Age:<asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox> <br /><br />
                    UserName:<asp:TextBox ID="txtus" runat="server" ></asp:TextBox>
                    Password:<asp:TextBox ID="txtpw" runat="server" ></asp:TextBox><br /><br/>
                    <asp:Button ID="btnInsert" runat="server" Text="Save" OnClick="btnInsert_Click" Height="33px" Width="78px" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" Height="33px" Width="86px" />
                    <br /><br />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_click" Height="41px" Width="92px" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_click" Height="42px" Width="100px" />
                    <br /><br />
                    <asp:button ID="dlal" Text="Delete All" runat="server" OnClick="btndlal_click" Height="38px" Width="200px" ForeColor="White" />
                    <br /><br/>
                    <asp:Label ID="lblStatus" runat="server"></asp:Label>
                    <br /><br />
                    <asp:Button ID="shw" Text="Show" runat="server" OnClick="btnShow_click" />
                    <br /><br />
                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="true" BackColor="#00FFCC" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:Button ID="bck" Text="Back to Admin" runat="server" OnClick="btnBack_click" />
                    <asp:Button ID="balo" Text="Back to Login" runat="server" OnClick="btnlogin_click" />
                <br /><br />
            </center>
        </div>
    </form>
</body>
</html4>
