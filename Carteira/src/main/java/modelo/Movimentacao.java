// CLASSE DESTINADA PARA TODAS AS MOVIMENTA??ES QUE TER? NO SISTEMA

package modelo;

public class Movimentacao {
	private int id;
	private double saldo;
	private String tipoMovimentacao;
	private int id_usuario;
	private int id_tipo;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getSaldo() {
		return saldo;
	}

	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	public String getTipoMovimentacao() {
		return tipoMovimentacao;
	}

	public void setTipoMovimentacao(String tipoMovimentacao) {
		this.tipoMovimentacao = tipoMovimentacao;
	}

	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public int getId_tipo() {
		return id_tipo;
	}

	public void setId_tipo(int id_tipo) {
		this.id_tipo = id_tipo;
	}

	@Override
	public String toString() {
		return "Movimentacoes [id=" + id + ", saldo=" + saldo + ", tipoMovimentacao=" + tipoMovimentacao
				+ ", id_usuario=" + id_usuario + ", id_tipo=" + id_tipo + "]";
	}
}