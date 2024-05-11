package com.jspider.movieflex_servlet_project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspider.movieflex_servlet_project.dao.AdminDao;
import com.jspider.movieflex_servlet_project.dto.Admin;

@WebServlet(value = "/adminLogin")
public class AdminLoginController  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		AdminDao adminDao = new AdminDao();
		
		String email = req.getParameter("adminEmail");
		String password = req.getParameter("adminPassword");
		
		System.out.println(email);
		Admin admin = adminDao.fetchAdminByEmailForLoginDao(email);
		
		if(admin!=null) {
			
			if(admin.getAdminPassword().equals(password)) {
				req.getRequestDispatcher("admin-home.jsp").forward(req, resp);
			}else {
				req.setAttribute("adminMsg", "password is invalid");
				req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
			}
			
		}else {
			req.setAttribute("adminMsg", "email is invalid");
			req.getRequestDispatcher("admin-login.jsp").forward(req, resp);
		}
	}
	
}
