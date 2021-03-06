package pl.tfalkowski.mail17.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.tfalkowski.mail17.model.User;
import pl.tfalkowski.mail17.repository.UserRepository;
import pl.tfalkowski.mail17.service.CurrentUser;
import pl.tfalkowski.mail17.service.UserService;


import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UserController {


    private final UserService userService;
    private User currentUser;
    private UserRepository userRepository;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
//        userService.saveUser(user);
        return "admin";
    }

    @GetMapping("/admin")
    @ResponseBody
    public String admin(@AuthenticationPrincipal CurrentUser customUser) {
        User entityUser = customUser.getUser();
        return "Hello " + entityUser.getUsername();
    }

    @ModelAttribute("user")
    public User getUser(){
        return currentUser;
    }

        @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String showForm(@RequestParam(required = false) Long id, Model model, HttpSession session) {
        User user = id == null ? new User() : userRepository.findById(id).get();
        model.addAttribute("user", user);
        return "login";
    }

    @RequestMapping(path = "/login", method = RequestMethod.POST)
    public String saveForm(@Valid User user, BindingResult result, Long id, HttpSession session, CurrentUser currentUser) {
        if (result.hasErrors()) {
            return "login";
        }
        session.setAttribute("id", currentUser.getUser().getId());
        userRepository.save(user);
        return "redirect:/";
    }

    @RequestMapping
    public String logout(){
        return "logout";
    }





}
