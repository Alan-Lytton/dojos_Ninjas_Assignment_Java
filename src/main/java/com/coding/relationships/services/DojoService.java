package com.coding.relationships.services;

import com.coding.relationships.models.Dojo;
import com.coding.relationships.repositories.DojoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DojoService {
    @Autowired
    private DojoRepository dojoRepository;

    public List<Dojo> findAllDojos() {
        return dojoRepository.findAll();
    }

    public Dojo createDojo(Dojo dojo) {
        return dojoRepository.save(dojo);
    }

    public Dojo findOneDojo(Long id) {
        Optional<Dojo> oneDojo = dojoRepository.findById(id);
        if(oneDojo.isPresent()){
            return oneDojo.get();
        }else{
            return null;
        }
    }
}
