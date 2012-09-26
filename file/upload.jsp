<%@ page pageEncoding="utf-8" %>
<%@page import="java.util.Calendar"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%
	request.setCharacterEncoding("utf-8");
	String uploadPath = "/upload/book";

	String savePath = request.getSession().getServletContext().getRealPath(uploadPath); 

	Calendar c = Calendar.getInstance();
	int year = c.get(Calendar.YEAR);
	int month = c.get(Calendar.MONTH)+1;

	String dynamicDatePath = year+"/"+month;
	uploadPath = savePath+"/"+dynamicDatePath;


	File directory = new File(uploadPath);
	if(directory.exists() == false) {
	  	directory.mkdirs();
 	}

	int sizeLimit = 1000 * 1024 * 1024;
	MultipartRequest multi = null;
	try {
		multi = new MultipartRequest(request, uploadPath, sizeLimit,
				"utf-8", new DefaultFileRenamePolicy());
	} catch (Exception e) {
		e.printStackTrace();
	}

	
	String imagePath = multi.getFilesystemName("fileToUpload");
	System.out.println("file : "+imagePath);
	if(imagePath != null)
		imagePath = "/upload/book/"+dynamicDatePath+"/"+multi.getFilesystemName("fileToUpload");
	
	
%>