package com.rsu.hackaton.genetics.covid19exchange;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.*;
import org.springframework.beans.factory.annotation.*;
import org.flywaydb.core.Flyway;

@SpringBootApplication
@EnableAutoConfiguration  // Sprint Boot Auto Configuration
@Configuration
@Component
public class Covid19ExchangeApplication {

	@Autowired
	private static Environment env;

	private static void DB_Migrate() {
		Flyway flyway = Flyway.configure().dataSource(env.getProperty("spring.datasource.url"), env.getProperty("spring.datasource.username"), env.getProperty("spring.datasource.password")).load();
		flyway.migrate();
	}

	public static void main(String[] args) {
		DB_Migrate();
		SpringApplication.run(Covid19ExchangeApplication.class, args);
	}



}
