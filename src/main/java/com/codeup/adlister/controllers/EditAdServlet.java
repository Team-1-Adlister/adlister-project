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

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        request.setAttribute("ad", DaoFactory.getAdsDao().get(Long.parseLong(adId)));
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String currentAdId = request.getParameter("currentAdId");
        long newAdId = Long.parseLong(currentAdId);
        String newTitle = request.getParameter("newAdTitle");
        String newDescription = request.getParameter("newAdDescription");
//        Ad editedAd = new Ad(
//                newAdId,
//                newTitle,
//                newDescription
//        );
        DaoFactory.getAdsDao().editAd(newAdId, newTitle, newDescription);
        response.sendRedirect("/profile");
    }
 }

//    User user = (User) request.getSession().getAttribute("user");
//    Ad ad = new Ad(
//            user.getId(),
//            request.getParameter("title"),
//            request.getParameter("description")
//    );
//        DaoFactory.getAdsDao().insert(ad);
//                response.sendRedirect("/ads");
//                }
