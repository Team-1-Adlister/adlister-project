package com.codeup.adlister.util;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AccessControl {
    // Prevents a user from editing an ad that does not belong to them, had they had access to edit button
    public static boolean unauthorizedEdit(HttpServletResponse response, long newAdId, User user) throws IOException {
        Ad oldAd = DaoFactory.getAdsDao().get(newAdId);
        if (oldAd.getUserId() != user.getId()) {
            response.sendError(HttpServletResponse.SC_FORBIDDEN);
            return true;
        }
        return false;
    }
}
