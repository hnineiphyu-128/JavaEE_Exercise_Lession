package com.mmit.fileupload;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/register")
public class UserController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//get request data
		String username = req.getParameter("name");
		String email = req.getParameter("email");
		Part imgPart = req.getPart("photo"); //file data
		String imgFileName = imgPart.getSubmittedFileName(); //user.jpg
		
		String currentname = imgFileName.substring(0,imgFileName.lastIndexOf(".")); //user
		String tmp = currentname + System.currentTimeMillis(); //user123456783461436
		imgFileName = imgFileName.replace(currentname, tmp); //user => user123456783461436
		
		//create user obj
		Users u = new Users();
		
		//add data to user object
		u.setName(username);
		u.setEmail(email);
		u.setPhoto(imgFileName);
		
		//add user obj to request scope
		req.setAttribute("userinfo", u);
		
		//save client upload file in server
		String rootPath = getServletContext().getRealPath("");
		String dirPath = rootPath + File.separator + "imgUploads";
		File rootDir = new File(dirPath); //check already exits imgUploads folder
		if (!rootDir.exists()) {
			rootDir.mkdir(); //making new folder 
		}
		System.out.println("Path = " + rootPath);
		System.out.println("Dir = " + rootDir);
		
		imgPart.write(rootDir + File.separator + imgFileName);
		
		//invoke other web page 
	    //getServletContext().getRequestDispatcher(req.getContextPath().concat("/display.jsp")).forward(req, resp);
		
		getServletContext().getRequestDispatcher("/display.jsp").forward(req, resp);
	}
}
