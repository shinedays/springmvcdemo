package com.shinedays.repository;

import com.shinedays.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by bupt on 3/13/17.
 */
public interface UserRepository extends JpaRepository<UserEntity,Integer>{
}
