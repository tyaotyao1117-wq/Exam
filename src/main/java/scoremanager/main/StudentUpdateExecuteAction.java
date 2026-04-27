package scoremanager.main;

import bean.Student;
import dao.StudentDao;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class StudentUpdateExecuteAction extends Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        //パラメータ取得
        String no = request.getParameter("no");
        String name = request.getParameter("name");
        String entYearStr = request.getParameter("entYear");
        String classNum = request.getParameter("classNum");
        String isAttendStr = request.getParameter("isAttend");

        
        int entYear = Integer.parseInt(entYearStr);
        boolean isAttend = Boolean.parseBoolean(isAttendStr);

        //Studentオブジェクト作成
        Student student = new Student();
        student.setNo(no);
        student.setName(name);
        student.setEntYear(entYear);
        student.setClassNum(classNum);
        student.setAttend(isAttend);

        // DAOで更新処理
        StudentDao dao = new StudentDao();
        boolean result = dao.save(student); // ← update処理想定

        // 成功時
        if (result) {
            request.setAttribute("message", "更新成功");
            request.getRequestDispatcher("student_update_done.jsp").forward(request, response);
            //エラー時
        } else {
            request.setAttribute("error", "更新失敗");
            request.getRequestDispatcher("student_update.jsp").forward(request, response);
        }
    }
}