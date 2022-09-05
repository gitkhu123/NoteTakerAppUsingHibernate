package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int id = Integer.parseInt(request.getParameter("noteid").trim());
			
			Session s = factoryProvider.getfactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = (Note)s.get(Note.class, id);
			
			note.setTitle(title);
			note.setContent(content);
			note.setAddedDate(new Date());
			
			tx.commit();
			s.close();
			
			response.sendRedirect("all_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
