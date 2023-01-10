package com.coding.relationships.controllers;

import com.coding.relationships.models.Dojo;
import com.coding.relationships.services.DojoService;
import com.coding.relationships.services.NinjaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Controller
@RequestMapping("/dojos")
public class DojoController {
    @Autowired
    private DojoService dojoService;
    @Autowired
    private NinjaService ninjaService;

    @GetMapping("")
    public String index(Model model){
        model.addAttribute("dojos", dojoService.findAllDojos());
        return "index.jsp";
    }

    @GetMapping("/new")
    public String newDojo(@ModelAttribute("dojo") Dojo dojo, Model model){
    return "newDojo.jsp";
    }

    @PostMapping("/new")
    public String addDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result){
        if(result.hasErrors()){
            return "index.jsp";
        }
        else{
            dojoService.createDojo(dojo);
            return "redirect:/dojos";
        }
    }
    @GetMapping("/show/{dojo_id}")
    public String showNinjas(@PathVariable("dojo_id")Long id, Model model){
        model.addAttribute("dojo", dojoService.findOneDojo(id));
        model.addAttribute("ninjas", ninjaService.findNinjaByDojoId(id));
        return "show.jsp";
    }
}
