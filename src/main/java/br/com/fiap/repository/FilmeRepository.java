package br.com.fiap.repository;

import br.com.fiap.model.FilmeModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class FilmeRepository {

	private static Map<Long, FilmeModel> filmes;

	public FilmeRepository() {
		// Instancia um novo HashMap
		filmes = new HashMap<Long, FilmeModel>();

		// Popula o nosso "banco de dados" (simulado)
		filmes.put((long) 1,
				new FilmeModel((long) 1, "monstro de Tadashi", "2019", "terror", "Tadashi", "18+", "......"));

		filmes.put(2L, new FilmeModel(2L, "Terra desolada ", "2000", "terror", "Tadashi", "18+", "...."));

		filmes.put(3L, new FilmeModel(3L, "Americam Tadashi", "2001", "comedia", "Tadashi", "12+",
				"besteirol , ano que o tadashi entrou na fraternidade , altas aventuras"));

		filmes.put(4L, new FilmeModel(4L, "alasca ", "2004", "drama", "Tadashi & cia ", "18+", "cila bino vai nao"));

		filmes.put(5L, new FilmeModel(5L, "Virgem de 40 anos", "2009", "Comedia Romantica", "Tadashi & cia", "18+",
				"Virgem de 40 anos , é uma historia baseada em fatos reais da vida do tadashi"));

	}

	public List<FilmeModel> findAll() {
		return new ArrayList<FilmeModel>(filmes.values());
	}

	public FilmeModel findById(long id) {
		return filmes.get(id);
	}

	public void save(FilmeModel filme) {
		Long newId = (long) (filmes.size() + 1);
		filme.setId((Long) newId);
		filmes.put(newId, filme);
	}

	public void update(FilmeModel filme) {
		filmes.put(filme.getId(), filme);
	}

	public void deleteById(long id) {
		filmes.remove(id);
	}

}
