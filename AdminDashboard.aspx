<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="webapp2026ELE.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
             background: url('https://media.istockphoto.com/id/1956501395/vector/political-event-in-germany-protests-and-demonstrations-in-germany-elections-in-germany.jpg?s=612x612&w=0&k=20&c=s1FldZTQPCKVDCQoaa2Obcv7KTwXv5vNwAIUNxsnS9Q=') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

         .glass-panel {
            background: rgba(255, 255, 255, 0.12);
            backdrop-filter: blur(18px);
            -webkit-backdrop-filter: blur(18px);
            padding: 40px;
            border-radius: 25px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.2);
            display: inline-block; 
        }

        h2 {
            color: #ffffff;
            font-weight: 700;
            margin-bottom: 30px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }

         .asp-button-style {
            width: 250px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.1);
            color: white;
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 12px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }

         #rbtn {
            background: linear-gradient(135deg, #00d2ff 0%, #3a7bd5 100%);
            border: none;
        }

        .asp-button-style:hover {
            background: rgba(255, 255, 255, 0.25);
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        #rbtn:hover {
            box-shadow: 0 8px 25px rgba(0, 210, 255, 0.4);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="glass-panel">
            <center style="height: auto; width: 374px">
            <h2 Forecolor="black ">SELECT A PATH TO PROGRESS</h2>
               <br />
                <asp:Button ID="vbtn" runat="server" OnClick="addVote_btn" text="ADD VOTERS" CssClass="asp-button-style" />
                <br /><br />
                <asp:Button ID="cbtn" runat="server" OnClick="addCan_btn" text="ADD CANDIDATE" CssClass="asp-button-style" />
                <br /><br />
                <asp:Button ID="rbtn" runat="server" OnClick="res_btn" text="RESULT" CssClass="asp-button-style" />
                <br /><br />
            </center>
        </div>
    </form>
</body>
</html>