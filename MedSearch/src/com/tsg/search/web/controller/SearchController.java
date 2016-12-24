package com.tsg.search.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tsg.search.service.SearchService;
import com.tsg.search.web.SearchResult;


@Controller
public class SearchController {
	
	@Autowired
	SearchService searchService;
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView openSearchPage(){			
		return new ModelAndView("search");
	}
	
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public ModelAndView doSearch(HttpServletRequest request, Model model){	
		String q = request.getParameter("q");
		List<SearchResult> results = searchService.searchByQuery(q);
		model.addAttribute("results", results);	
		model.addAttribute("query", q);
		Map<String,Object>data = searchService.getCount(q);
		model.addAttribute("totalResults",data.get("count"));
		model.addAttribute("totalTime",data.get("QTime"));
		return new ModelAndView("results");
	}
}