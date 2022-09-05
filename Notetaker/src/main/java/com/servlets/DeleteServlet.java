package com.servlets;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.factoryProvider;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteServlet() {
        super();      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int noteid = Integer.parseInt(request.getParameter("note_id").trim());
			
			Session s = factoryProvider.getfactory().openSession();
			Transaction tx = s.beginTransaction();
			Note note = (Note)s.get(Note.class, noteid);
			s.delete(note);
			tx.commit();
			s.close();
			response.sendRedirect("all_notes.jsp");	
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
