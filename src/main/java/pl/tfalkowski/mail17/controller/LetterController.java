package pl.tfalkowski.mail17.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import pl.tfalkowski.mail17.model.Category;
import pl.tfalkowski.mail17.model.Letter;
import pl.tfalkowski.mail17.model.User;
import pl.tfalkowski.mail17.repository.CategoryRepository;
import pl.tfalkowski.mail17.repository.LetterRepository;
import pl.tfalkowski.mail17.repository.UserRepository;
import pl.tfalkowski.mail17.service.CurrentUser;
import pl.tfalkowski.mail17.service.UserService;


import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/letter")
public class LetterController {

    private CurrentUser currentUser;
    private UserRepository userRepository;
    private UserService userService;
    private CategoryRepository categoryRepository;
    private LetterRepository letterRepository;
    private User user;

    public LetterController(UserRepository userRepository, CategoryRepository categoryRepository, LetterRepository letterRepository) {
        this.userRepository = userRepository;
        this.categoryRepository = categoryRepository;
        this.letterRepository = letterRepository;

    }

    @RequestMapping(path = "/form", method = RequestMethod.GET)
    public String showForm(@RequestParam(required = false) Long id, Model model) {
        Letter letter = id == null ? new Letter() : letterRepository.findById(id).get();
        model.addAttribute("letter", letter);
        return "item/form";
    }

//    @RequestMapping(value = "/form", method = RequestMethod.GET)
//    public String showForm(Model model) {
//        model.addAttribute("letter", new Letter());
//
//        return "form";
//    }

    @RequestMapping(path = "/form", method = RequestMethod.POST)
    public String saveForm(@Valid Letter letter, BindingResult result, @AuthenticationPrincipal CurrentUser customUser) {
        if (result.hasErrors()) {
            return "item/form";
        }

      //  User user = customUser.getUser();
       // letter.setUser(user);
        letterRepository.save(letter);

        return "redirect:all";
    }

    @ModelAttribute("categories")
    public List<Category> getAllCategories(){
        return categoryRepository.findAll();
    }

}
