package com.wym.petshop.controller;

import com.wym.petshop.model.Account;
import com.wym.petshop.service.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;

@RestController
@CrossOrigin
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountServiceImpl service;

    @RequestMapping(value ="/login",method = RequestMethod.POST)
    public ResponseEntity<Account> login(@RequestBody Account account, HttpServletResponse response){
        if(service.login(account.getUsername(),account.getPassword())!=null){//登录成功
            /**
             * restful 不在后端设cookie
             */
//            Cookie cookie=new Cookie("pusername",account.getUsername());
//            cookie.setMaxAge(1000*60*60*24*7);
//            response.addCookie(cookie);
            return new ResponseEntity<Account>(account, HttpStatus.OK);//200
        }else{
            return new ResponseEntity<Account>(HttpStatus.CONFLICT);//409
        }
    }
    @RequestMapping(value ="/reg",method = RequestMethod.POST)
    public ResponseEntity<Void> reg(@RequestBody Account account, HttpServletResponse response){
        if(service.queryByusername(account.getUsername())>0){
            return new ResponseEntity<Void>(HttpStatus.CONFLICT);//409
        }
        if(service.reg(account)>0){//注册成功
            return new ResponseEntity<Void>(HttpStatus.OK);//200
        }
        throw new RuntimeException();
    }
}
