package com.probweb.webviewapp.Models;

public class MainModel {
    private final int id;
    private final String title;
    private final String url;

    public MainModel(int id, String title, String url) {
        this.id = id;
        this.title = title;
        this.url = url;
    }

    public int getId() {
        return id;
    }

    public String getTitle() {
        return title;
    }

    public String getUrl() {
        return url;
    }
}
