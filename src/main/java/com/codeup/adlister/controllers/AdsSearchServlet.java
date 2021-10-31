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
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        System.out.println(request.getParameter("searchTerm"));
//        if (request.getParameter("searchTerm") == null){
//            request.setAttribute("ads", DaoFactory.getAdsDao().sortByDateDesc());
//        } else if (request.getParameter("sortBy").equals("dateAsc")){
//            request.setAttribute("ads", DaoFactory.getAdsDao().all());
//        } else if (request.getParameter("searchTerm") != null) {
//            request.setAttribute("ads", DaoFactory.getAdsDao().bySearchTerm(request.getParameter("searchTerm")));
//        } else {
//            request.setAttribute("ads", DaoFactory.getAdsDao().all());
//        }
//        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
//    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = request.getParameter("searchTerm");
        System.out.println(searchTerm);
        request.setAttribute("searchTerm", searchTerm);
//        response.sendRedirect("/ads");
        request.setAttribute("ads", DaoFactory.getAdsDao().bySearchTerm(request.getParameter("searchTerm")));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);

    }
}
