package servico;

import dao.CarteiraDAO;
import modelo.Carteira;
import modelo.Usuario;

public class CarteiraServico {
	CarteiraDAO carteira = new CarteiraDAO();
	
	public Carteira buscarId(int id) {
		return carteira.buscarId(id);
	}

	public boolean excluir(String  id) {
		return carteira.excluirCarteira(Integer.parseInt(id));
	}

	public boolean incluir(Carteira ctr) {
		return carteira.incluirCarteira(ctr);
	}

	public boolean alterar(Carteira ctr) {
		return carteira.alterarCarteira(ctr);
	}
}