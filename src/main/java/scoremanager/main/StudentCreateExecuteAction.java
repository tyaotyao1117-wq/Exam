package scoremanager.main;

import bean.Student;
import bean.Teacher;
import dao.StudentDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class StudentCreateExecuteAction extends Action {

    public void execute(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String entYearstr = request.getParameter("entYear");
        String no = request.getParameter("no");
        String name = request.getParameter("name");
        String classNum = request.getParameter("classNum");

        // 入力チェック
        if (entYearstr == null || entYearstr.isEmpty() ||
            no == null || no.isEmpty() ||
            name == null || name.isEmpty() ||
            classNum == null || classNum.isEmpty()) {

            request.setAttribute("error", "入力項目に不備があります");
            request.getRequestDispatcher("student_create.jsp").forward(request, response);
            return;
        }

        int entYear = Integer.parseInt(entYearstr);

        StudentDao studentDao = new StudentDao();

        // 重複チェック
 
        Student existing = studentDao.get(no);
       
        if (existing != null) {
            request.setAttribute("error", "学生番号が重複しています");
            request.setAttribute("no", no);
            request.getRequestDispatcher("student_create.jsp").forward(request, response);
            return;
        }

        
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("user");

        // 登録処理
        Student student = new Student();
        student.setEntYear(entYear);
        student.setNo(no);
        student.setName(name);
        student.setClassNum(classNum);
        student.setAttend(true);
        student.setSchool(teacher.getSchool());

       
        studentDao.save(student);
       

        // 成功時
        response.sendRedirect(request.getContextPath() + "student_create_done.jsp");
    }
}