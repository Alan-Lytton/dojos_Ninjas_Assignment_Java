package com.coding.relationships.services;

import com.coding.relationships.models.Ninja;
import com.coding.relationships.repositories.NinjaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NinjaService {
    @Autowired
    private NinjaRepository ninjaRepository;

    public Ninja createNinja(Ninja ninja) {
        return ninjaRepository.save(ninja);
    }

    public List<Ninja> findNinjaByDojoId(Long dojo_id) {
        return ninjaRepository.findNinjasByDojo_Id(dojo_id);
    }
}
