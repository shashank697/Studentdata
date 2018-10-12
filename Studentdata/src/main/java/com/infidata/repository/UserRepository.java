package com.infidata.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

//import javax.persistence.Query;

//import org.hibernate.Session;
import org.springframework.data.repository.CrudRepository;

import com.infidata.modal.User;

public interface UserRepository extends CrudRepository<User, Integer> {


    public List<User> findAllByInternship(String internship);
    
    

}


