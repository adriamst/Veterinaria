package com.pe.vet.veterinaria.servlet;

import com.pe.vet.veterinaria.dao.UsuarioDAO;
import com.pe.vet.veterinaria.model.Usuario;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("/WEB-INF/vistas/login.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        

        System.out.println("Email: " + email);
        System.out.println("Password: " + password);

    
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = dao.validarLogin(email, password);

        if (usuario != null && "ADMIN".equals(usuario.getRol())) {

        HttpSession session = request.getSession();
        session.setAttribute("usuario", usuario);

        response.sendRedirect("dashboard");

        } else {

        request.setAttribute("error", "Credenciales incorrectas");
        request.getRequestDispatcher("/WEB-INF/vistas/login.jsp")
               .forward(request, response);
    }
}
}