<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
        }
        .login-box {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
            text-align: center;
        }
        input[type="text"], input[type="password"] {
            padding: 10px;
            margin: 10px 0;
            width: 100%;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>User Login</h2>
        <form action="login" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
