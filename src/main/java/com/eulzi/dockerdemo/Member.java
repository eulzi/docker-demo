package com.eulzi.dockerdemo;

import javax.persistence.*;

@Entity
public class Member {

  @Id
  @GeneratedValue(strategy= GenerationType.AUTO)
  private Long uid;
  private String alias;

  public String getAlias() {
    return alias;
  }

  public void setAlias(String alias) {
    this.alias = alias;
  }

  public Long getUid() {
    return uid;
  }

  public void setUid(Long uid) {
    this.uid = uid;
  }
}
