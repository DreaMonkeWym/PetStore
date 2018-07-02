package com.wym.petshop.service;

import com.wym.petshop.mapper.AccountMapper;
import com.wym.petshop.mapper.ProfileMapper;
import com.wym.petshop.model.Account;
import com.wym.petshop.model.AccountExample;
import com.wym.petshop.model.Profile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AccountServiceImpl {
    @Autowired
    private AccountMapper dao;
    @Autowired
    private ProfileMapper pdao;
    public Account login(String username, String password){
        return dao.login(username,password);
    }

    public int queryByusername(String username){
        AccountExample example=new AccountExample();
        example.createCriteria().andUsernameEqualTo(username);
        List<Account> list=dao.selectByExample(example);
        return list==null?0:list.size();
    }
    public int reg(Account record){
         dao.insert(record);
         Profile profile=record.getProfile();
         profile.setUsername(record.getUsername());

         return pdao.insert(profile);
    }

}
