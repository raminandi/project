package Controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import DAO.AddCarDAO;
import Models.AddCarModel;

@Controller
public class AddCarController {

	@Autowired
	AddCarDAO carDAO;
	
	@SuppressWarnings("null")
	@RequestMapping(value="/AddCarPage" , method = RequestMethod.GET)
	public String AddCarPage(ModelMap model) {
	      model.addAttribute("title", "Show Page for Student");
	      
	      return "AddCarPage";
	   }
	
	   @SuppressWarnings("null")
	   @RequestMapping(value="/AddCarPage" , method = RequestMethod.POST)
	   public void AddCarPageSave(ModelMap model, HttpServletRequest req) {
		   String Brand = req.getParameter("Brand");
		   String Model = req.getParameter("Model");
		   String Year = req.getParameter("Year");
		   String Price = req.getParameter("Price");
		   String Kind = req.getParameter("Kind");
		   String Time = req.getParameter("Time");
		   String Ostan = req.getParameter("Ostan");
		   String KindD = req.getParameter("KindD");
		   String Shasi = req.getParameter("Shasi");
		   String Color = req.getParameter("Color");
		   String Status = req.getParameter("Status");
		   String Fuel = req.getParameter("Fuel");
		   String Hazine = req.getParameter("Hazine");
	      
	      AddCarModel AddCar = new AddCarModel();
	      
	      AddCar.setBrand(Brand);
	      AddCar.setModel(Model);
	      AddCar.setYear(Integer.parseInt(Year));
	      AddCar.setPrice(Integer.parseInt(Price));
	      AddCar.setKind(Kind);
	      AddCar.setTime(Integer.parseInt(Time));
	      AddCar.setOstan(Ostan);
	      AddCar.setKindD(KindD);
	      AddCar.setShasi(Shasi);
	      AddCar.setColor(Color);
	      AddCar.setStatus(Status);
	      AddCar.setFuel(Fuel);
	      AddCar.setHazine(Hazine);
	      
	      carDAO.insert(AddCar);
	   }
}
