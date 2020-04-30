package br.com.fiap.controller;

import java.util.List;





import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.com.fiap.model.FilmeModel;
import br.com.fiap.repository.FilmeRepository;









@Controller
public class FilmeController {
	
	private FilmeRepository filmeRepository = new FilmeRepository();
	
	
	@RequestMapping(value = "/filme", method = RequestMethod.GET)
	public String findAll(Model model) {
		
		List<FilmeModel> listaDosProdutos = filmeRepository.findAll();
		
		model.addAttribute("filmes", listaDosProdutos);
		
		return "filmes";
	}
	
	@RequestMapping(value = "/filme/{id}", method = RequestMethod.GET)
	public String findById(@PathVariable("id") long id, Model model) {
		
		FilmeModel filmeEncontrado = filmeRepository.findById(id);
		
		model.addAttribute("filme", filmeEncontrado);
		
		return "filme-detalhe";
	}
	
	
	@RequestMapping(value = "/filme/new", method = RequestMethod.GET)
	public String form() {
		return "filme-novo";
	}

	
	
	@RequestMapping(value = "/filme/new", method = RequestMethod.POST)
	public String save(FilmeModel filmeModel) {
		
		filmeRepository.save(filmeModel);
		
		return "filme-novo-sucesso";
	}
	@RequestMapping(value = "/filme/update/{id}", method = RequestMethod.GET)
	public String update(@PathVariable("id") long id, Model model) {
		
		model.addAttribute("filme", filmeRepository.findById(id));
		
		return "filme-editar";
	}
	
	
	@RequestMapping(value = "/filme/update", method = RequestMethod.POST)
	public String updateFilme(FilmeModel filmeModel, Model model) {
		
		filmeRepository.update(filmeModel);
		
		model.addAttribute("filmes", filmeRepository.findAll());
		
		return "filmes";
	}
	
	

	@RequestMapping(value = "/produto/delete/{id}", method = RequestMethod.DELETE)
	public String delete(@PathVariable("id") long id, FilmeModel filmeModel, Model model) {
		
		model.addAttribute("filme", filmeRepository.findById(id));
		
		filmeRepository.deleteById(id);
	

		return "filmes";
	}
	
	
	
	
	

	
}
