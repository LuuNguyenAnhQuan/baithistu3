package org.java.demo.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import org.java.demo.entity.Student;
import org.java.demo.entity.Subject;
import org.java.demo.entity.StudentScore;
import org.java.util.HibernateUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import java.io.IOException;

public class ScoreServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        int subjectId = Integer.parseInt(request.getParameter("subjectId"));
        double score1 = Double.parseDouble(request.getParameter("score1"));
        double score2 = Double.parseDouble(request.getParameter("score2"));

        EntityManager em = HibernateUtil.getEntityManagerFactory().createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        try {
            transaction.begin();
            Student student = em.find(Student.class, studentId);
            Subject subject = em.find(Subject.class, subjectId);
            StudentScore studentScore = new StudentScore();
            studentScore.setStudent(student);
            studentScore.setSubject(subject);
            studentScore.setScore1(score1);
            studentScore.setScore2(score2);
            em.persist(studentScore);
            transaction.commit();
        } catch (RuntimeException e) {
            transaction.rollback();
            throw e;
        } finally {
            em.close();
        }

        response.sendRedirect("student.jsp");
    }
}
