<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="webapp2026ELE.WebForm1" %>

<html4>
<html4 xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Election Commission - Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),url('data:image/jpeg;base64,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');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            width: 350px;
            text-align: center;
        }
        h3 {
            color: #2c3e50;
            margin-bottom: 30px;
            font-weight: 700;
            text-transform: uppercase;
            letter-spacing: 1px;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }
        .input-group label {
            display: block;
            font-weight: 600;
            margin-bottom: 5px;
            color: #555;
        }
        .my-input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 15px;
            transition: all 0.3s;
        }
        .my-input:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
        }
        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: #2c3e50;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }
        .btn-login:hover {
            background-color: #34495e;
        }
        #lblError {
            display: block;
            margin-top: 15px;
            color: #e74c3c;
            font-weight: 600;
            font-size: 14px;
        }
        .footer-text {
            margin-top: 20px;
            font-size: 12px;
            color: #7f8c8d;
        }
        .login-box {
        max-width: 320px;
        background: #f8f9fa;
        padding: 12px;
        border-radius: 6px;
        border: 1px solid #ddd;
        font-family: 'Segoe UI', Arial, sans-serif;
        font-size: 13px; 
        color: #444;
    }

    .login-box h4 {
        margin: 0 0 8px 0;
        font-size: 14px;
        color: #2c3e50;
        border-bottom: 1px solid #eee;
        padding-bottom: 5px;
    }

    .login-box ul {
        padding-left: 18px;
        margin: 0;
    }

    .login-box li {
        margin-bottom: 5px;
        line-height: 1.4;
    }

    .login-box b {
        color: #333;
    }
    
    .example-text {
        font-size: 11px;
        color: #666;
        display: block;
        margin-top: 2px;
        font-style: italic;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-card">
            <h3>Secure Web-Based Voting System for Academic and College Institutions</h3>        
            <div class="input-group">
                <label>Username</label>
                <asp:TextBox ID="txtUser" runat="server" CssClass="my-input" placeholder="Enter username"></asp:TextBox>
            </div>
            <div class="input-group">
                <label>Password</label>
                <asp:TextBox ID="txtPass" TextMode="Password" runat="server" CssClass="my-input" placeholder="••••••••"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn-login" />
            <asp:Label ID="lblError" runat="server" />
            <div class="login-box">
                <h4>Login Instructions:</h4>
                <ul>
                    <li><b>Credentials:</b> Enter Username & Password.
                        <span class="example-text">(Username = First 4 letters of name + last 3 digits of UNIVERSITY Reg No - Password = First 4 letters of name with First letter caps an date of birth Year )</span>
                        <span class="example-text">EX: Username = mahe583, Password = Mahe2006</span>

                    </li>
                   
                    <li><b>Direct:</b> Auto-redirect to Voting Dashboard.</li>
                     <li><b>Contact:</b> 9344674252 || itsmahender@gamil.com</li>
                </ul>
            </div>
            <div class="footer-text">
                &copy; 2026 Election Commission of Sindhi College.|| Choose your right one 👆.
            </div>
        </div>
    </form>
</body>
</html4>