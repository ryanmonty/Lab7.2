package grandcircus.co.hotelsearch;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HotelController {
	
	@Autowired
	private HotelRepository repo;

	@RequestMapping("/")
	public String searchList(Model model) {
		List<Hotel> hotels = repo.findAll();
		
		
		model.addAttribute("hotels", hotels);
		
		return "listhotels";
	}
	
	@PostMapping("/searchBy")
	public String showResults(Model model, @RequestParam String city) {
		List<Hotel> hotels = repo.findByCity(city);
		
		model.addAttribute("hotels", hotels);
			return "results";
	}
}
