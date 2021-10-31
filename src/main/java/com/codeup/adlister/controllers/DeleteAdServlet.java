package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static com.codeup.adlister.util.AccessControl.unauthorizedEdit;

@WebServlet(name = "controllers.DeleteAdServlet", urlPatterns = "/ads/delete")
public class DeleteAdServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentAdId = request.getParameter("id");
        long newAdId = Long.parseLong(currentAdId);
        User user = (User) request.getSession().getAttribute("user");
        if (unauthorizedEdit(response, newAdId, user)) return;
        DaoFactory.getAdsDao().delete(newAdId);
        response.sendRedirect("/profile");
    }
}
