// CLASSE DESTINADA PARA ABERTURA DE UMA CARTEIRA, VALOR DE SALDO TOTAL, ETC.
package modelo;

public class Carteira {
	private int id;
	private String nome;
	private double saldo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	@Override
	public String toString() {
		return "Carteira [id=" + id + ", nome=" + nome + ", saldo=" + saldo + "]";
	}
}
