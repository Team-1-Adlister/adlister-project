package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.util.List;

public interface Users {
    User findByUsername(String username);
    Long insert(User user);

    boolean checkUsernameExists(String username);

    void edit(String username, String newUsername, String newPassword);

    User get(long id);
}
