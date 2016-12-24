package com.tsg.search.web;

public class SearchResult {
	private String title;
	private String date;
	private String author;
	private String article;
	
	public SearchResult(){
		
	}
	
	public SearchResult(String title, String date, String author, String article) {
		super();
		this.title = title;
		this.date = date;
		this.author = author;
		this.article = article;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getArticle() {
		return article;
	}

	public void setArticle(String article) {
		this.article = article;
	}
}