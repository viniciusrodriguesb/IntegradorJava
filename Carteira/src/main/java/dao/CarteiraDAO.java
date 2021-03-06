package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modelo.Carteira;
import modelo.Usuario;

public class CarteiraDAO {

	Connection cnx;

	// INCLUS?O DADOS DA CARTEIRA NO BANCO
	public boolean incluirCarteira(Carteira carteira) {
		boolean resultado = true;
		int retornoQuery;

		cnx = DAO.createConnection();
		String sql = "INSERT INTO tb_carteira (nome, saldo) VALUES (?, ?)";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			ps.setString(1, carteira.getNome());
			ps.setDouble(2, carteira.getSaldo());

			retornoQuery = ps.executeUpdate();

			if (retornoQuery <= 0) {
				resultado = false;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultado;
	}

	// ALTERA??O DE DADOS DA CARTEIRA NO BANCO
	public boolean alterarCarteira(Carteira carteira) {
		boolean resultado = true;
		int retornoQuery;

		cnx = DAO.createConnection();
		String sql = "UPDATE tb_carteira SET nome=? WHERE id=?";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			
			ps.setString(1, carteira.getNome());
			ps.setInt(2, carteira.getId());

			retornoQuery = ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultado;
	}

	// EXCLUS?O DE DADOS DA CARTEIRA NO BANCO
	public boolean excluirCarteira(int id) {
		boolean resultado = true;
		int retornoQuery;

		cnx = DAO.createConnection();
		String sql = "DELETE FROM tb_carteira WHERE ID = ?";

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
	public List<Carteira> listar() {
		List<Carteira> listaDeCarteiras = new ArrayList<Carteira>();
		ResultSet rs = null;
		Carteira carteira = null;

		cnx = DAO.createConnection();

		String sql = "SELECT * FROM tb_carteira";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {
				carteira = new Carteira();

				carteira.setId(rs.getInt("id"));
				carteira.setNome(rs.getString("nome"));
				carteira.setSaldo(rs.getDouble("saldo"));

				listaDeCarteiras.add(carteira);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return listaDeCarteiras;
	}
	
	public Carteira buscarId(int id) {
		Carteira carteira = null;
		ResultSet rs = null;

		cnx = DAO.createConnection();

		String sql = "SELECT * FROM tb_carteira WHERE id = ?";

		try {
			PreparedStatement ps = cnx.prepareStatement(sql);
			
			ps.setInt(1, id);

			rs = ps.executeQuery();

			while (rs.next()) {
				carteira = new Carteira();

				carteira.setId(rs.getInt("id"));
				carteira.setNome(rs.getString("nome"));
				carteira.setSaldo(rs.getDouble("saldo"));			
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return carteira;
	}
	
}