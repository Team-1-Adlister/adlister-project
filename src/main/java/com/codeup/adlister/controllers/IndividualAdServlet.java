package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.IndividualAdServlet", urlPatterns = "/ads/individualAd")
public class IndividualAdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adId = request.getParameter("id");

        // Retrieve Ad object by its primary key id
        Ad ad = DaoFactory.getAdsDao().get(Long.parseLong(adId));
        // Retrieve user that created ad using the userId of the Ad we retrieved above
        User user = DaoFactory.getUsersDao().get(ad.getUserId());

        request.setAttribute("ad", ad);
        request.setAttribute("createdBy", user);
        request.getRequestDispatcher("/WEB-INF/ads/individualAd.jsp").forward(request, response);
    }

}
