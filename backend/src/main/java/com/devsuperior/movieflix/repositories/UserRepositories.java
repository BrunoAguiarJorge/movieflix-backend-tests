package com.devsuperior.movieflix.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devsuperior.movieflix.entities.Role;
import com.devsuperior.movieflix.entities.User;

public interface UserRepositories extends JpaRepository<User, Long>{

}
