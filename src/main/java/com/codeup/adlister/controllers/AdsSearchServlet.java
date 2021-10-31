package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsSearchServlet", urlPatterns = "/ads/search")
public class AdsSearchServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = request.getParameter("searchTerm");
        request.setAttribute("searchTerm", searchTerm);
        request.setAttribute("ads", DaoFactory.getAdsDao().bySearchTerm(request.getParameter("searchTerm")));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }
}
