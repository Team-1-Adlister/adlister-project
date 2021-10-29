package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter pw = null;
//        pw = response.getWriter();
//        String adTitle = request.getParameter("title");
//        String adDescr = request.getParameter("description");
//        response.setContentType("text/html");
//
//        if (adTitle == null || adTitle.length() == 0 || adTitle.equals(" ")) {
//            pw.println("<h4 style='color:red'>Please input a title.</h4>");
//            return;
//        }



//        **********************
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
            .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        PrintWriter pw = null;
        pw = response.getWriter();
        String adTitle = request.getParameter("title");
        String adDescr = request.getParameter("description");
        response.setContentType("text/html");

        if (adTitle == null || adTitle.length() == 0 || adTitle.equals(" ")) {
            pw.println("<h1 style='color:red'>Please input a title.</h1>");
            return;
        }

        if (adDescr == null || adDescr.length() == 0 || adDescr.equals(" ")) {
            pw.println("<h1 style='color:red'>Please input a description.</h1>");
            return;
        }







//        **************************
        User user = (User) request.getSession().getAttribute("user");
        Ad ad = new Ad(
            user.getId(),
            request.getParameter("title"),
            request.getParameter("description")
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}


