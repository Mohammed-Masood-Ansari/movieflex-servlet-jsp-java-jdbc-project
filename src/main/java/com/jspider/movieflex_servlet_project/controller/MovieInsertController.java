package com.jspider.movieflex_servlet_project.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.jspider.movieflex_servlet_project.dao.MovieDao;
import com.jspider.movieflex_servlet_project.dto.Movie;

@WebServlet(value = "/movieRegister")
@MultipartConfig
public class MovieInsertController extends HttpServlet {

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MovieDao dao = new MovieDao();
		
		String name = req.getParameter("name");
		String genresType = req.getParameter("genresType");
		String language = req.getParameter("language");
		String description = req.getParameter("description");
		String productionHouse = req.getParameter("productionhouse");
		String directorName = req.getParameter("directorname");
		String quality = req.getParameter("quality");
		String url = req.getParameter("url");
		String type = req.getParameter("movie");
		LocalDate releaseDate = LocalDate.parse(req.getParameter("release"));
		
		Part part = req.getPart("image");
		
		System.out.println(name);
		
		Movie movie = new Movie(name, releaseDate, genresType, language, description, productionHouse, directorName, quality, part.getInputStream(), url, type);
		
		dao.saveMovieDao(movie);
		
	}
	
}
