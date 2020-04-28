package br.com.fiap.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.fiap.model.ProdutoModel;
import br.com.fiap.repository.ProdutoRepository;

@Controller
public class ProdutoController {

	private ProdutoRepository produtoRepository = ProdutoRepository.getInstance();
	
	// Busca
	@RequestMapping(value = "/produto", method = RequestMethod.GET)
	public String findAll(Model model) {
		
		List<ProdutoModel> listaDosProdutos = produtoRepository.findAll();
		
		model.addAttribute("produtos", listaDosProdutos);
		
		return "produtos";
	}
	
	@RequestMapping(value = "/produto/{id}", method = RequestMethod.GET)
	public String findById(@PathVariable("id") long id, Model model) {
		
		ProdutoModel produtoEncontrado = produtoRepository.findById(id);
		
		model.addAttribute("produto", produtoEncontrado);
		
		return "produto-detalhe";
	}
	
	@RequestMapping(value = "/produto/new", method = RequestMethod.GET)
	public String form(@ModelAttribute("produtoModel") ProdutoModel produtoModel) {
		return "produto-novo";
	}
	
	@RequestMapping(value = "/produto/new", method = RequestMethod.POST)
	public String save(@Valid ProdutoModel produtoModel, 
						BindingResult bindingResult,
						RedirectAttributes redirectAttributes) {

		if (bindingResult.hasErrors()) {
			return "produto-novo";
		}
		
		produtoRepository.save(produtoModel);
		
		redirectAttributes.addFlashAttribute("messages", "Produto cadastrado com sucesso!!!");
		
		return "redirect:/produto";
	}
	
	@RequestMapping(value = "/produto/update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("produto", produtoRepository.findById(id));
		
		return "produto-editar";
	}
	
	@RequestMapping(value = "/produto/update", method = RequestMethod.POST)
	public String updateProduto(ProdutoModel produtoModel,
								RedirectAttributes redirectAttributes) {
		
		produtoRepository.update(produtoModel);
		
		redirectAttributes.addFlashAttribute("messages", "Produto atualizado com sucesso!!!");
				
		//forward
		return "redirect:/produto";
	}
	
	@RequestMapping(value = "/produto/delete/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") long id, RedirectAttributes redirectAttributes) {
		
		produtoRepository.deleteById(id);
		
		redirectAttributes.addFlashAttribute("messages", "Produto deletado com sucesso!!! ;)");
		
//		Não tem mais necessidade, pois está sendo feito um redirect
//		model.addAttribute("produtos", produtoRepository.findAll());
		
		//redirect
		return "redirect:/produto";
	}

}
