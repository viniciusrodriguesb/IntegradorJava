package controle;

import java.io.IOException;
import java.util.Objects;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modelo.Carteira;
import servico.CarteiraServico;

@WebServlet("/PrepararAlteracaoCarteira")
public class PrepararAlteracaoCarteira extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PrepararAlteracaoCarteira() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		CarteiraServico servico = new CarteiraServico();
		Carteira carteira = new Carteira();
		
		String idRequisicao = request.getParameter("id");
		
		carteira = servico.buscarId(Integer.parseInt(idRequisicao));
		
		if (!Objects.isNull(carteira)) {
			session.setAttribute("carteiraSelecionada", carteira);
			response.sendRedirect("editarCarteira.jsp");
		} else {
			response.sendRedirect("erro.jsp");
		}
	}
}