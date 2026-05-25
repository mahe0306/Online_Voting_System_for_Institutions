# Secure Web-Based Voting System for Academic and College Institutions

## 📄 Project Overview
The **Secure Web-Based Voting System** is a secure, dynamic web application designed to replace traditional paper ballots in college elections with an automated, tamper-proof system. Built using ASP.NET, C#, and SQL Server, it enforces strict data validation rules to prevent double-voting.

* **Live Demo Hosted at:** [tnlection2026.asp.net](http://tnlection2026.asp.net/Default) *(Replace with actual link if active)*
* **Development Mentorship:** Hykin Tech Software Academy, Porur, Chennai[cite: 3]
* **Institution:** Department of Computer Science, Sindhi College[cite: 3]


## 🛠️ Tech Stack & Requirements

### Software Environment
* **Frontend:** HTML5, CSS3 (Modern Glassmorphism Design Layout)[cite: 3]
* **Backend Language:** C# (ASP.NET Web Forms Framework)[cite: 3]
* **Database Engine:** Microsoft SQL Server (T-SQL Engine)[cite: 3]
* **IDE / Host:** Visual Studio 2026 / MonsterASP.net Platform[cite: 3]

### Hardware Baseline
* **Processor:** Intel Core i3 Architecture or higher[cite: 3]
* **Memory:** 16 GB System RAM[cite: 3]
* **Storage:** 256 GB Solid-State Drive (SSD)[cite: 3]

---

## 🏗️ System Architecture
The application runs on a standard **3-Tier Structural Framework** to guarantee security and data isolation[cite: 3]:
1. **Presentation Tier:** Dynamic `.aspx` interactive forms driven by responsive CSS layout styles[cite: 3].
2. **Application Tier:** Business validation logic written in C# handling session state and authentication rules[cite: 3].
3. **Data Tier:** High-performance relational database structures hosted on Microsoft SQL Server[cite: 3].

---

## 💻 Core Code Modules & Snippets

### 1. Voter Authentication Logic (`Default.aspx.cs`)
This module handles secure user login verification and cross-checks the data records to confirm if a voter has already cast their ballot[cite: 3].

```csharp
// Checks database records to stop duplicate votes instantly
string query = "SELECT * FROM Votersuspw WHERE Username=@user AND Pasword=@pass";
SqlCommand cmd = new SqlCommand(query, conn);
cmd.Parameters.AddWithValue("@user", txtUser.Text);
cmd.Parameters.AddWithValue("@pass", txtPass.Text);

conn.Open();
SqlDataReader dr = cmd.ExecuteReader();
if (dr.Read())
{
    string votedStatus = dr["Voted"].ToString();
    if (!string.IsNullOrEmpty(votedStatus))
    {
        lblError.Text = "Don't Cast a Fake Vote.! (Already Voted)"; // Double voting block
    }
    else
    {
        Session["VoterUser"] = txtUser.Text;
        Response.Redirect("VotingPhase.aspx");
    }
}
