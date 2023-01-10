package com.coding.relationships.repositories;

import com.coding.relationships.models.Ninja;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    List<Ninja> findAll();
    List<Ninja> findNinjasByDojo_Id(Long id);
}
