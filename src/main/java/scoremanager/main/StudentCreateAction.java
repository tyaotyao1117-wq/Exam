package scoremanager.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class StudentCreateAction extends Action{
	public void execute(HttpServletRequest request,HttpServletResponse response
			)throws Exception{
		
		request.getRequestDispatcher("student_create.jsp").forward(request, response);
		
	}
	

}
