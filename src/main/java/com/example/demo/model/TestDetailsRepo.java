package com.example.demo.model;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.model.TestDetails;


public interface TestDetailsRepo extends CrudRepository<TestDetails, Integer> {

}
