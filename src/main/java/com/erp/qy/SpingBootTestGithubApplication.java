package com.erp.qy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.erp.qy.dao")
public class SpingBootTestGithubApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpingBootTestGithubApplication.class, args);
	}



}
