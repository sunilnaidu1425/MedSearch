package com.tsg.search.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServer;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.impl.HttpSolrServer;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.apache.solr.common.util.NamedList;
import org.springframework.stereotype.Component;

import com.tsg.search.service.SearchService;
import com.tsg.search.web.SearchResult;

@Component
public class SearchServiceImpl implements SearchService{
	
	public List<SearchResult> searchByQueryTest(String q) {
		List<SearchResult> results = new ArrayList<SearchResult>();
		//call Solr and get results, populate the list
		SearchResult result1 = new SearchResult("Title1","Date1","Author","Article");
		SearchResult result2 = new SearchResult("Title2","Date2","Author","Article");
		results.add(result1);
		results.add(result2);
		return results;
	}

	@Override
	public List<SearchResult> searchByQuery(String q) {
		List<SearchResult> results = new ArrayList<SearchResult>();
		//call Solr and get results, populate the list
		String url = "http://localhost:8983/solr/meddata";
		SolrServer server = new HttpSolrServer(url);		
		SolrQuery query = new SolrQuery();		
	    query.setQuery(q);
	    try {
			QueryResponse queryResponse = server.query(query);
			
			SolrDocumentList rs = queryResponse.getResults();
			 long numFound = rs.getNumFound();
			 Iterator<SolrDocument> iter = queryResponse.getResults().iterator();
			 
			// long QTime = rs.getQTime();
			 
			 System.out.println(numFound);
			// System.out.println(QTime);

		    while (iter.hasNext()) {
		    	
		    	SolrDocument resultDoc = iter.next();
		      
		      String title = (String) resultDoc.getFieldValue("journalTitle");
		      String author = (String)resultDoc.getFieldValue("country");
		      String article = (String)resultDoc.getFieldValue("articleTitle");
		      String date = (String)resultDoc.getFieldValue("numFound");
		      SearchResult result = new SearchResult(title,date,article,author);
		      results.add(result);
		      /*if (queryResponse.getHighlighting().get(id) != null) {
		        List<String> highlightSnippets = queryResponse.getHighlighting().get(id).get("content");
		      }*/
		    }
			
			System.out.println("Test");
		} catch (SolrServerException e) {
			e.printStackTrace();
		}
	    
		return results;
	}
		


@Override
public Map<String,Object> getCount(String q){
	Map<String,Object> getCountTime = new HashMap();
	String url = "http://localhost:8983/solr/meddata";
	SolrServer server = new HttpSolrServer(url);		
	SolrQuery query = new SolrQuery();		
    query.setQuery(q);
    query.setParam("facet", true);
    query.setParam("facet.field", "language");
    long getCountData=0;
    Object a=null;
    try{
    	QueryResponse queryResponse = server.query(query);
    	SolrDocumentList rs = queryResponse.getResults();
    	getCountData = rs.getNumFound();
    	NamedList header = queryResponse.getResponseHeader();
    	if(header!=null){
		a = header.get("QTime");
    	}
    }
    
	catch (SolrServerException e)
	{
		e.printStackTrace();
	}
    getCountTime.put ("count",(Object)getCountData);
    getCountTime.put ("QTime",a);
    return getCountTime;
	}

}
