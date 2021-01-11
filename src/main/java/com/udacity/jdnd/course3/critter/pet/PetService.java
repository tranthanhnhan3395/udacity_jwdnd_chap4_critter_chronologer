package com.udacity.jdnd.course3.critter.pet;

import com.udacity.jdnd.course3.critter.user.Customer;
import com.udacity.jdnd.course3.critter.user.CustomerRepository;
import exception.CustomerNotFoundException;
import exception.PetNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetService {

    @Autowired
    private PetRepository petRepository;

    @Autowired
    private CustomerRepository customerRepository;

    public Pet addPet (Pet pet){
        return petRepository.save(pet);
    }

    public List<Pet> getAllPets (){
        return petRepository.findAll();
    }

    public Pet getPetById (Long id) {
        return petRepository.findById(id).orElse(null);
    }

    public List<Pet> getPetsByOwner (Long ownerId) {
        return petRepository.findByCustomer_id(ownerId);
    }

    public Pet updatePetOwner (Long ownerId, Long petId) throws Exception {
        Pet pet = petRepository.findById(petId).orElseThrow(() -> new PetNotFoundException("no such pet"));
        Customer customer = customerRepository.findById(ownerId).orElseThrow(() -> new CustomerNotFoundException("no such customer"));

        pet.setCustomer(customer);

        return petRepository.save(pet);
    }

}
