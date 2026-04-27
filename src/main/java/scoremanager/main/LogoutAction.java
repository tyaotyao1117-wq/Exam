package scoremanager.main;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

@WebServlet("/Logout.action")
public class LogoutAction extends Action {
    public void execute(
            HttpServletRequest request, HttpServletResponse response
    ) throws Exception {

        HttpSession session = request.getSession(false);

        if (session != null) {
            session.invalidate();
        }

       
        response.sendRedirect("logout.jsp");
    }
}