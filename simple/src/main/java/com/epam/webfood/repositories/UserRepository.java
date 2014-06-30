package com.epam.webfood.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.epam.webfood.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>
{

}
