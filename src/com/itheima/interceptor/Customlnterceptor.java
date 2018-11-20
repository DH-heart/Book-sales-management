package com.itheima.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Customlnterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
       HttpSession session=httpServletRequest.getSession();
       if(session.getAttribute("text")!=null){
           return  true;

       }else{
           httpServletRequest.setAttribute("msga","Î´µÇÂ½ÇëµÇÂ½!");
           httpServletRequest.getRequestDispatcher("index.jsp").forward(httpServletRequest,httpServletResponse);
           return false;
       }

    }
    @Override

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        System.out.println("fasfasfagastyutyg");
    }
    @Override

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        System.out.println("fasfasfagasgtyiert");
    }
}
