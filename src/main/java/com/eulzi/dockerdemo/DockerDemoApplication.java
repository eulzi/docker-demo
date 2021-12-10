package com.eulzi.dockerdemo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.StreamSupport;

@SpringBootApplication
public class DockerDemoApplication {

  public static void main(String[] args) {
    SpringApplication.run(DockerDemoApplication.class, args);
  }

  @RestController
  public static class DemoController {

    private final MemberRepository repository;

    public DemoController(MemberRepository repository) {
      this.repository = repository;
    }

    @GetMapping("/users")
    public List<Member> users() {
      return StreamSupport.stream(repository.findAll().spliterator(), false)
              .collect(Collectors.toList());
    }
  }
}