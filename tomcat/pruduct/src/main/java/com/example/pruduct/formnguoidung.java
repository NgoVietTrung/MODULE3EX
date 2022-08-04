package com.example.pruduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = ("/formnguoidung"))
public class formnguoidung extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        printWriter.println("<form action ='/themnguoidung' method='post'>");
        printWriter.println("ten: <input type='text' name='ten' >");
        printWriter.println("tuoi: <input type='text' name='tuoi'>");
        printWriter.println("diachi: <input type='text' name='diachi'>");
        printWriter.println("<input type='submit' value='submit'> ");
        printWriter.println("</form>");
    }
}
