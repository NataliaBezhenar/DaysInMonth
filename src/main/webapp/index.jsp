<html>
<body>
<h2>Days in month</h2>
 <h3>Choose a month:</h3>
  <form method="get">
    <input type="checkbox" name="month" value=31>January
    <input type="checkbox" name="month" value=28>February
    <input type="checkbox" name="month" value=31>March
    <input type="checkbox" name="month" value=30>April
    <input type="checkbox" name="month" value=31>May
    <input type="checkbox" name="month" value=30>June
    <input type="checkbox" name="month" value=31>July
    <input type="checkbox" name="month" value=31>August
    <input type="checkbox" name="month" value=30>September
    <input type="checkbox" name="month" value=31>October
    <input type="checkbox" name="month" value=30>November
    <input type="checkbox" name="month" value=31>December
    <input type="submit" value="Choose!">
  </form>
 
  <%
  String[] monthes = request.getParameterValues("month");
  if (monthes != null) {
  %>
    <h3>Days in selected month:</h3>
    <ul>
  <%
      for (int i = 0; i <  monthes.length; ++i) {
  %>
        <li><%=  monthes[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>
