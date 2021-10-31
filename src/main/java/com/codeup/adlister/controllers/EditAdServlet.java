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

import static com.codeup.adlister.util.AccessControl.unauthorizedEdit;

@WebServlet(name = "controllers.EditAdServlet", urlPatterns = "/ads/edit")
public class EditAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");
        long newAdId = Long.parseLong(adId);
        User user = (User) request.getSession().getAttribute("user");
        if (unauthorizedEdit(response, newAdId, user)) return;
        request.setAttribute("ad", DaoFactory.getAdsDao().get(Long.parseLong(adId)));
        request.getRequestDispatcher("/WEB-INF/ads/edit.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String currentAdId = request.getParameter("currentAdId");
        long newAdId = Long.parseLong(currentAdId);
        String newTitle = request.getParameter("newAdTitle");
        String newDescription = request.getParameter("newAdDescription");
        User user = (User) request.getSession().getAttribute("user");

        if (unauthorizedEdit(response, newAdId, user)) return;

        Ad editedAd = new Ad(
                newAdId,
                user.getId(),
                newTitle,
                newDescription
        );
        DaoFactory.getAdsDao().editAd(editedAd);
        response.sendRedirect("/profile");
    }


}


