package com.tsg.search.service;
//this is in git now
import java.util.List;
import java.util.Map;

import com.tsg.search.web.SearchResult;


public interface SearchService {
	public List<SearchResult> searchByQuery(String q);
	public Map<String,Object> getCount(String q);
}
