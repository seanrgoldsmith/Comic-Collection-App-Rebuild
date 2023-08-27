package com.techelevator.service;

import com.techelevator.model.Comic;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
@Service
public class RestComicAPIService implements ComicAPIService{

    private final String API_URL = "https://metron.cloud/api/";
    RestTemplate rt = new RestTemplate();
    @Override
    public List<Comic> getComics() {
        String response = rt.getForObject(API_URL, String.class);
        System.out.println(response);
        return null;
    }
}
