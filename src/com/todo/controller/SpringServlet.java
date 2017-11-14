package com.todo.controller;

import java.io.IOException;



import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.UUID;

import javax.jdo.PersistenceManager;
import javax.servlet.http.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.FetchOptions;
import com.google.appengine.labs.repackaged.org.json.JSONArray;
//import com.google.appengine.labs.repackaged.org.json.JSONObject;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.todo.jdo.EmployeeDetails;
import com.todo.jdo.ToDo;
import com.todo.jdo.ToDoList;
import com.todo.util.PMF;
import com.google.appengine.api.datastore.Key;
import com.google.appengine.api.datastore.KeyFactory;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.Query.FilterOperator;


@Controller
public class SpringServlet {


	 
	 @RequestMapping("/hello")
	   public String hello(ModelMap model) 
		{
	      model.addAttribute("message", "Hello Spring MVC Framework!");

	      return "hello";
	   }
		
	 
	 
	 @RequestMapping(value = "/submit", method = RequestMethod.POST)
		
	 public String submit(HttpServletRequest req, HttpServletResponse resp, Model model) throws IOException {
			
		 	String email = req.getParameter("email");
			String name = req.getParameter("name");
			
			Key contactKey = KeyFactory.createKey("person", "name");
			System.out.println();
			
			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		    
			Entity contact = new Entity("Person");
		    
			contact.setProperty("name", name);
			contact.setProperty("email", email);
			
		    
		    datastore.put(contact);
//			PersistenceManager pm = PMF.get().getPersistenceManager();
//			Query q = pm.newQuery(ToDo.class);
//			
//			
//			List<ToDoList> results = (List<ToDoList>) q.execute(email);
//			
//			if (!(results.isEmpty())) {
//				resp.sendRedirect("hello.jsp");
//			} else {
//				ToDoList r = new ToDoList();
//
//				r.setEmail(email);
//				r.setName(name);
//
//				try {
//					pm.makePersistent(r);
//
//				} finally {
//					pm.close();
//				}
//			}
			return "welcomePage";
		
	 }
	
	 @RequestMapping(value="/list", method = RequestMethod.GET)
		
	 public String listCustomer(ModelMap model) {

			DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
			
			Query query = new Query("Person");
		   
			List<Entity> person = datastore.prepare(query).asList(FetchOptions.Builder.withLimit(10));

		    model.addAttribute("contactList",  person);

			return "list";

		}
	
	
		
		
		
		
		
}