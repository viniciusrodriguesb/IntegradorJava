package servico;

import dao.UsuarioDAO;
import modelo.Usuario;

public class UsuarioServico {
	UsuarioDAO usuario = new UsuarioDAO();
	
	public Usuario buscarId(int id) {
		return usuario.buscarId(id);
	}

	public boolean excluir(String id) {
		return usuario.excluirUsuario(Integer.parseInt(id));
	}

	public boolean incluir(Usuario usr) {
		return usuario.incluirUsuario(usr);
	}

	public boolean alterar(Usuario usr) {
		return usuario.alterarUsuario(usr);
	}
}