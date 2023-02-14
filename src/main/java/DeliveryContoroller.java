

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Delivery;
import dto.Order;

@WebServlet("*.do")
public class DeliveryContoroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeliveryContoroller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		//어떤 페이지에서 요청이 왓는지 확인
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		
		
		//응답 페이지
		String page = "";
		
		
		//메뉴선택
		if(command.equals("/order.do")) {

			//데이터 받기
			String menuName = request.getParameter("menuName");
			int chikenNum = Integer.parseInt(request.getParameter("chikenNum"));
			String[] addOrder = request.getParameterValues("addOrder");
			String requestText = request.getParameter("requestText");
			
			
			Order order = new Order(menuName, chikenNum, addOrder, requestText);
			
			//데이터 보내기
			request.setAttribute("menuSelect", order);
			
			page = "delivery.jsp";
		}
		
		//delivery.jsp에서 페이지 이동
		if(command.equals("/customerInfo.do")) {
			String menuName = request.getParameter("menuName");
			int chikenNum = Integer.parseInt(request.getParameter("chikenNum"));
			String[] addOrder = request.getParameterValues("addOrder");
			String requestText = request.getParameter("requestText");
			
			String customer = request.getParameter("customer");
			String tell = request.getParameter("tell");
			String location = request.getParameter("location");
			
			//고객정보 객체 생성
			Order order = new Order(menuName, chikenNum, addOrder, requestText);
			Delivery deliver = new Delivery(customer, tell, location);
			
			//고객정보 보내기
			request.setAttribute("menuSelect", order);
			request.setAttribute("customerInfo", deliver);
			
			page = "order_info.jsp";
		}
		
		//페이지 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
	}
	
	

}
