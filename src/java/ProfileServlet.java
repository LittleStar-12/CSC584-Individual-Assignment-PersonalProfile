/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nurna
 */
@WebServlet("/ProfileServlet") 
public class ProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        
        // Retrieve information submitted from index.html
    String name = request.getParameter("name");
    String studentId = request.getParameter("studentId");
    String programme = request.getParameter("programme");
    String email = request.getParameter("email");
    String hobbies = request.getParameter("hobbies");
    String introduction = request.getParameter("introduction");

    // Store the information in session attributes
    request.getSession().setAttribute("name", name);
    request.getSession().setAttribute("studentId", studentId);
    request.getSession().setAttribute("programme", programme);
    request.getSession().setAttribute("email", email);
    request.getSession().setAttribute("hobbies", hobbies);
    request.getSession().setAttribute("introduction", introduction);

    // Redirect to profile.jsp
    response.sendRedirect(request.getContextPath() + "/profile.jsp");
}
    /**
     * Handles the HTTP GET method.
     */
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.sendRedirect(request.getContextPath() + "/index.html");
    }

    /**
     * Handles the HTTP POST method.
     */
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     */
    @Override
    public String getServletInfo() {
        return "Personal Profile Servlet";
    }

}