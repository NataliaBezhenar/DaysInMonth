package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MonthToDays extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		final int iDay = 1;
		String month = request.getParameter("month");
		String year = request.getParameter("year");

		Calendar calendar = new GregorianCalendar(Integer.parseInt(year),
				Integer.parseInt(month), iDay);
		int daysInMonth = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		pw.println("Days in month: " + daysInMonth);
		pw.close();
	}

}
