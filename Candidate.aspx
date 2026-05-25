<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidate.aspx.cs" Inherits="webapp2026ELE.Candidate" %>


<html4>
<head runat="server">
    <title></title>
</head>
    <style>
     body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
         background-image: url('https://www.shutterstock.com/shutterstock/videos/3474441737/thumb/1.jpg?ip=x480');
        background-size: cover;
        background-position: center;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
     #form1 > div {
        background: rgba(255, 255, 255, 0.85);  
        backdrop-filter: blur(10px);  
        padding: 40px !important;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.3);
        width: 500px;
        border: 1px solid rgba(255, 255, 255, 0.3);
    }
     input[type="text"] {
        width: 100%;
        padding: 12px;
        margin: 8px 0 20px 0;
        display: inline-block;
        border: 2px solid #dcdde1;
        border-radius: 8px;
        box-sizing: border-box;
        transition: 0.3s;
        background: rgba(255, 255, 255, 0.9);
    }
    input[type="text"]:focus {
        border-color: #1e3799;
        outline: none;
        box-shadow: 0 0 8px rgba(30, 55, 153, 0.2);
    }
     input[type="submit"] {
        width: 100%;
        padding: 12px;
        margin: 10px 0;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        font-weight: bold;
        font-size: 16px;
        transition: 0.3s;
        text-transform: uppercase;
    }
     #btnSubmit {
        background: linear-gradient(135deg, #44bd32, #10ac84);
        color: white;
    }
     #btnDelete {
        background-color: #ee5253 !important;
        color: white;
        }
     #clr {
        background-color: #7f8c8d !important;
        color: white;
        margin-left: 2%;
    }
     #dlal {
        background-color: #2f3640 !important;
        color: white;
        margin-top: 15px;
    }
     #adlo {
        background: none;
        color: #1e3799;
        border: 2px solid #1e3799 !important;
        margin-top: 20px;
    } 
    input[type="submit"]:hover {
        opacity: 0.9;
        transform: translateY(-2px);
    }
    #lbl1, #lb1 {
        display: block;
        margin-top: 15px;
        font-weight: bold;
        color: #c23616;
    }
</style>
<body>
    <form id="form1" runat="server">
       <div style="text-align:center; padding:20px;">
           <h2>ADD NEW CANDIDATE</h2><br /><br>
           Party Name:<asp:TextBox ID="txpt" runat="server"></asp:TextBox> <br /><br />
           Leader Name:<asp:TextBox ID="txtl" runat="server"></asp:TextBox> 
           Party Logo URL:<asp:TextBox ID="txtLogoUrl" runat="server" Width="300px"></asp:TextBox> 
           <br /><br />
           <asp:Button ID="btnSubmit" runat="server" Text="Add Candidate" OnClick="btnSubmit_click" />
           <br /><br />
           <asp:Label ID="lbl1" runat="server" Text=""></asp:Label>
           <br /><br />
           <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_click" Height="47px" Width="222px" />
           <asp:button ID="clr" Text="Clear" runat="server" OnClick="btnclr_click" Height="44px" Width="193px" />
           <br />
           <asp:button ID="dlal" Text="Delete All" runat="server" OnClick="btndlal_click" Height="65px" Width="225px" />
           <br /><br/>
           <asp:Label ID="lb1" runat="server"></asp:Label>
           <br /><br />
           <asp:Button ID="adlo" runat="server" OnClick="adtologin_click" Text="Back To Login" Height="64px" Width="364px" />
       </div>
    </form>
</body>
</html4>
