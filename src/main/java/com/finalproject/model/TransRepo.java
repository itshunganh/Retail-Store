package com.finalproject.model;
import org.springframework.data.repository.CrudRepository;

public interface TransRepo extends CrudRepository<Transaction, String> {
}