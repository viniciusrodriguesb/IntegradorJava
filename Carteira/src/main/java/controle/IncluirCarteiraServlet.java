package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Carteira;
import servico.CarteiraServico;

@WebServlet("/IncluirCarteiraServlet")
public class IncluirCarteiraServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirCarteiraServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		CarteiraServico ctr = new CarteiraServico();
		Carteira c = new Carteira();
		String saldo = request.getParameter("saldoC");
		int s = Integer.parseInt(saldo);
		
		c.setNome(request.getParameter("nomeC"));
		c.setSaldo(s);
		
		if(ctr.incluir(c)) {
			response.sendRedirect("resultWallet.jsp");
		}
		
	}
}