package br.com.fiap.model;

import javax.validation.constraints.NotBlank;

public class FilmeModel {
	
	private Long id;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String nome;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String ano;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String genero;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String diretor;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String classificao;
	@NotBlank(message = "Por favor, preencha o nome, não pode ser branco")
	private String sipnose;
	
	
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
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public String getDiretor() {
		return diretor;
	}
	public void setDiretor(String diretor) {
		this.diretor = diretor;
	}
	public String getClassificao() {
		return classificao;
	}
	public void setClassificao(String classificao) {
		this.classificao = classificao;
	}
	public String getSipnose() {
		return sipnose;
	}
	public void setSipnose(String sipnose) {
		this.sipnose = sipnose;
	}
	
	public FilmeModel(Long id, String nome, String ano, String genero, String diretor, String classificao,
			String sipnose) {
		super();
		this.id = id;
		this.nome = nome;
		this.ano = ano;
		this.genero = genero;
		this.diretor = diretor;
		this.classificao = classificao;
		this.sipnose = sipnose;
	}
	
	
	

	
	
	
	
	
}
