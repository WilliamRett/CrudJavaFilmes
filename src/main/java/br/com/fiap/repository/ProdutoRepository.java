package br.com.fiap.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.ProdutoModel;

public class ProdutoRepository {
	
	private static ProdutoRepository instance;
	
	//Map que simula o banco de dados
	private static Map<Long, ProdutoModel> produtos;
	
	public static ProdutoRepository getInstance() {
		if (instance == null) {
			instance = new ProdutoRepository();
		}
		return instance;
	}
	
	private ProdutoRepository() {
		produtos = new HashMap<Long, ProdutoModel>();
		
		//Populando "banco de dados"
		produtos.put(1L, new ProdutoModel(1L, "Produto 1", "Sku-01", "Desc Produto 1", 
				10.50, "Um produto muito bom!"));
		produtos.put(2L, new ProdutoModel(2L, "Produto 2", "Sku-02", "Desc Produto 2", 
				54.50, "Um produto muito bom!"));
		produtos.put(3L, new ProdutoModel(3L, "Produto 3", "Sku-03", "Desc Produto 3", 
				10.50, "Um produto muito bom!"));
	}

	
	public List<ProdutoModel> findAll() {
		return new ArrayList<ProdutoModel>(produtos.values());
	}
	
	public ProdutoModel findById(long id) {
		return produtos.get(id);
	}
	
	public void save(ProdutoModel produto) {
		 Long newId = (long) (produtos.size() + 1);
		 produto.setId(newId);
		 produtos.put(newId, produto);
		 
	}
	
	public void update(ProdutoModel produto) {
		produtos.put(produto.getId(), produto);
	}
	
	public void deleteById(long id) {
		produtos.remove(id);
	}
	
}
