package br.com.fiap.model;

import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class ProdutoModel {

	private Long id;

	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String nome;

	private String sku;

	@Size(min = 1, max = 100)
	private String descricao;

	@DecimalMin(value = "0.1", message = "Valor deve ser mais do que R$ 0,10")
	private Double preco;

	private String caracteristicas;

	public ProdutoModel(Long id, String nome, String sku, String descricao, Double preco, String caracteristicas) {
		super();
		this.id = id;
		this.nome = nome;
		this.sku = sku;
		this.descricao = descricao;
		this.preco = preco;
		this.caracteristicas = caracteristicas;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Double getPreco() {
		return preco;
	}

	public void setPreco(Double preco) {
		this.preco = preco;
	}

	public String getCaracteristicas() {
		return caracteristicas;
	}

	public void setCaracteristicas(String caracteristicas) {
		this.caracteristicas = caracteristicas;
	}

}
