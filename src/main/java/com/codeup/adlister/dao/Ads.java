package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    Ad get(long i);

    List<Ad> sortByDateDesc();

    List<Ad> userAds(long userId);

    List<Ad> sortByUserDateDesc(long userId);

    void editAd(Ad ad);

    void delete(long id);

    List<Ad> bySearchTerm(String searchTerm);
}
