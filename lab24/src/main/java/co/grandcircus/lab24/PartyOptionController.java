package co.grandcircus.lab24;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PartyOptionController {

	@Autowired
	private PartyOptionRepository rep;
	
	@GetMapping("/vote")
	public String vote(Model model) {
		List<PartyOption> partyoptions = rep.findAll();
		model.addAttribute("partyoptions", partyoptions);
		return "vote";
	}
	
	@PostMapping ("/add")
	public String add(PartyOption partyoption) {
		rep.save(partyoption);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Long id, PartyOption partyoption) {
		PartyOption partyoptions = rep.findById(id).get();
		partyoptions.setVotes(partyoptions.getVotes() + 1 );
		System.out.println(partyoptions.toString());
		rep.save(partyoptions);
		return "redirect:/vote";
	}
}
