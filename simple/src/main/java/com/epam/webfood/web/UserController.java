/**
 * 
 */
package com.epam.webfood.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.epam.webfood.entities.User;
import com.epam.webfood.services.UserService;

/**
 * @author Siva
 *
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/welcome")
	public String welcome(Model model) 
	{
		return "welcome";
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model) {
		return "login";
	}

	@RequestMapping("/userhome")
	public String userhome(Model model) 
	{
		List<User> blogs = userService.findAllUsers();
		/*List<User> blogs = new ArrayList<>();
		blogs.add(new User(1, "User1"));
		blogs.add(new User(2, "User2"));
		blogs.add(new User(3, "User3"));*/
		model.addAttribute("USERS", blogs);
		return "userhome";
	}
	
	@RequestMapping("/admin/adminhome")
	public String adminhome(Model model) 
	{
		List<User> blogs = userService.findAllUsers();
		/*List<User> blogs = new ArrayList<>();
		blogs.add(new User(1, "adm-User1"));
		blogs.add(new User(2, "adm-User2"));
		blogs.add(new User(3, "adm-User3"));*/
		model.addAttribute("USERS", blogs);
		return "admin/adminhome";
	}
}
