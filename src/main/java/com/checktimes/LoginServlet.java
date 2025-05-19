package com.checktimes;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static HashMap<String, Integer> loginCount = new HashMap<>();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("username");
        String pass = request.getParameter("password");

        if (uname != null && !uname.isEmpty() && pass != null && !pass.isEmpty()) {
            int count = loginCount.getOrDefault(uname, 0) + 1;
            loginCount.put(uname, count);

            request.setAttribute("username", uname);
            request.setAttribute("count", count);

            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}
