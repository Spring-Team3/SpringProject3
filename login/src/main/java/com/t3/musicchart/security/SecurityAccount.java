package com.t3.musicchart.security;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import com.t3.musicchart.model.Account;

public class SecurityAccount extends User {
	private static final long serialVersionUID = 1L;

	public SecurityAccount(Account account) {
		super(account.getId(), account.getPassword(), AuthorityUtils.createAuthorityList(account.getRole()));
	}
}
