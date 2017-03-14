package com.shinedays.repository;

import com.shinedays.model.BlogEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by bupt on 3/14/17.
 */
@Repository
public interface BlogReposity extends JpaRepository<BlogEntity, Integer> {
}
