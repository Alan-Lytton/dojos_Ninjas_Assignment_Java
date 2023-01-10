package com.coding.relationships.controllers;

import com.coding.relationships.models.Ninja;
import com.coding.relationships.services.DojoService;
import com.coding.relationships.services.NinjaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {

    @Autowired
    private NinjaService ninjaService;

    @Autowired
    private DojoService dojoService;

    @GetMapping("/new")
    public String newNinja(@ModelAttribute("ninja")Ninja ninja, Model model){
        model.addAttribute("dojos", dojoService.findAllDojos());
        return "newNinja.jsp";
    }

    @PostMapping("/new")
    public String addNinja(@Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result){
        if(result.hasErrors()){
            return "newNinja.jsp";
        }
        else{
            ninjaService.createNinja(ninja);
            return "redirect:/dojos";
        }
    }

}
