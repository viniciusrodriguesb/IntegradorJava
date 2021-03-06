package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Carteira;
import modelo.Movimentacao;
import modelo.Usuario;
import modelo.tipoMovimentacao;

public class MovimentacaoDAO {
	Connection cnx;

	// INCLUS?O DADOS DA MOVIMENTACAO NO BANCO
	public boolean incluirMovimentacao(Movimentacao mov) {
		boolean resultado = true;
		int retornoQuery;
		tipoMovimentacao t = new tipoMovimentacao();
		Usuario u = new Usuario();

		cnx = DAO.createConnection();
		String sql = "INSERT INTO tb_movimentacao(saldo, tipoMovimentacao, id_usuario, id_tipo) VALUES (?, ?, ?, ?)";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			ps.setDouble(1, mov.getSaldo());
			ps.setString(2, mov.getTipoMovimentacao());
			ps.setInt(3, u.getId());
			ps.setInt(4, t.getId());

			retornoQuery = ps.executeUpdate();

			if (retornoQuery <= 0) {
				resultado = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultado;
	}

	// EXCLUS?O DE DADOS DA MOVIMENTACAO NO BANCO
	public boolean excluirCarteira(int id) {
		boolean resultado = true;
		int retornoQuery;

		cnx = DAO.createConnection();
		String sql = "DELETE FROM tb_movimentacao WHERE ID = ?";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			ps.setInt(1, id);

			retornoQuery = ps.executeUpdate();

			if (retornoQuery <= 0) {
				resultado = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultado;
	}

	// LISTAR OS DADOS QUE EST?O NO BANCO DA CARTEIRA
	public List<Movimentacao> listar() {
		List<Movimentacao> listaDeMovimentacao = new ArrayList<Movimentacao>();
		ResultSet rs = null;
		Movimentacao mvt = null;

		cnx = DAO.createConnection();

		String sql = "SELECT * FROM tb_movimentacao";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {
				mvt = new Movimentacao();

				mvt.setId(rs.getInt("id"));
				mvt.setSaldo(rs.getDouble("saldo"));
				mvt.setTipoMovimentacao(rs.getString("tipo"));
				mvt.setId_usuario(rs.getInt("id_usuario"));
				mvt.setId_tipo(rs.getInt("id_tipo"));

				listaDeMovimentacao.add(mvt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaDeMovimentacao;
	}

	public boolean sacar(Carteira carteira) {
		boolean resultado = true;
		int retornoQuery;

		cnx = DAO.createConnection();
		String sql = "INSERT INTO tb_movimentacao (nome, saldo) VALUES (?, ?)";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			ps.setString(1, carteira.getNome());
			ps.setDouble(2, carteira.getSaldo() + carteira.getSaldo());

			retornoQuery = ps.executeUpdate();

			if (retornoQuery <= 0) {
				resultado = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultado;
	}
}
