package com.t3.musicchart.account.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.t3.musicchart.account.service.AccountService;
import com.t3.musicchart.mapper.AccountMapper;
import com.t3.musicchart.model.Account;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	AccountMapper accountMapper;
	
	@Override
	public void join(Account account) {
		accountMapper.insertAccount(account);
	}
	
}
