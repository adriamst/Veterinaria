package com.pe.vet.veterinaria.servlet;

import com.pe.vet.veterinaria.dao.MascotaDAO;
import com.pe.vet.veterinaria.model.Mascota;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MascotaServlet", urlPatterns = {"/MascotaServlet"})
public class MascotaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Recoger datos del JSP
        String nom = request.getParameter("txtnombre");
        String esp = request.getParameter("txtespecie");
        String raz = request.getParameter("txtraza");
        String due = request.getParameter("txtdueño");

        // 2. Meterlos en la "caja" (Objeto Mascota)
        Mascota m = new Mascota();
        m.setNombre(nom);
        m.setEspecie(esp);
        m.setRaza(raz);
        m.setDueño(due);

        // 3. Pasárselos al "bodeguero" (DAO) para que los guarde
        MascotaDAO dao = new MascotaDAO();
        dao.registrar(m);

        // 4. Avisar que terminó y volver al panel
        response.sendRedirect("panelAdmin.jsp");
    }
}
