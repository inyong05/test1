package com.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 임의의 인증 정보 설정
        String aid = "admin";     // ID
        String apw = "1234";      // Password
        String aname = "Admin";   // 사용자 이름

        // 사용자가 입력한 ID와 PW
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");

        HttpSession session = request.getSession();

        // ID와 PW가 일치하는지 확인
        if (aid.equals(id) && apw.equals(pw)) {
            // 일치하면 세션에 aname 저장하고 main.jsp로 리다이렉트
            session.setAttribute("aname", aname); // 세션에 aname 저장
            response.sendRedirect("main.jsp");
        } else {
            // 불일치하면 main.jsp로 리다이렉트
            response.sendRedirect("main1.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // GET 요청도 POST와 동일하게 처리
    }
}
