<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #e3f2fd;
        }
        .welcome-box {
            text-align: center;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 8px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h2>Welcome <%= request.getAttribute("username") %></h2>
        <p>You have logged in <%= request.getAttribute("count") %> time(s).</p>
        <a href="login.jsp">Logout</a>
    </div>
</body>
</html>
