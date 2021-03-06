package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Carteira;
import servico.CarteiraServico;

@WebServlet("/AlterarCarteiraServlet")
public class AlterarCarteiraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AlterarCarteiraServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Carteira c = new Carteira();
		CarteiraServico servico = new CarteiraServico();

		c.setId(Integer.parseInt(request.getParameter("id")));
		c.setNome(request.getParameter("nome"));
		c.setSaldo(Double.parseDouble(request.getParameter("saldo")));

		if (servico.alterar(c)) {
			response.sendRedirect("resultWallet.jsp");
		} 
	}
}