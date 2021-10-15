package com.shop.view.controller;

import com.shop.view.*;
import java.util.HashMap;
import java.util.Map;

import com.shop.view.user.LoginController;
import com.shop.view.user.LogioutController;


public class HandlerMapping {
	private Map<String, Controller> mappings;

	public HandlerMapping() {
		mappings = new HashMap<String, Controller>();
		mappings.put("/login.do", new LoginController());
		mappings.put("/logout.do", new LogioutController());		
	}

	public Controller getController(String path) {
		return mappings.get(path);
	}
}

