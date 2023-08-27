package com.techelevator.service;

import com.techelevator.model.Comic;
import java.util.List;

public interface ComicAPIService {
    // Interface will utilize abstract methods which are implicitly public

    List<Comic> getComics();
}
