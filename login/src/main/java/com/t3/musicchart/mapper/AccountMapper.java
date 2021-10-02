package com.t3.musicchart.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.t3.musicchart.model.Account;

@Mapper
public interface AccountMapper {
	Account getAccountById(String id);
	void insertAccount(Account account);
}
