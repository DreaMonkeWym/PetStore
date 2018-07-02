package com.wym.petshop.controller;

import com.wym.petshop.model.Cart;
import com.wym.petshop.model.Orders;
import com.wym.petshop.service.CartServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.RequestEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin
@RequestMapping("/cart")
public class CatController {
    @Autowired
    private CartServiceImpl service;

    @RequestMapping(value = "/checkout",method = RequestMethod.POST)
    public ResponseEntity<Void> checkout(@RequestBody Orders orders){

        service.updateByPrimaryKeySelective(orders);
        return new ResponseEntity<Void>(HttpStatus.OK);
    }

    @RequestMapping(value ="/add" ,method = RequestMethod.POST)
    public ResponseEntity<String> addCart(@RequestBody Cart cart){
        Map map=new HashMap();
        map.put("in_itemid",cart.getItemid());
        map.put("in_username",cart.getUsername());
        map.put("in_quantity",cart.getQuantity());

       service.addCart(map);
       String oid= map.get("out_oid").toString();//订单编号
       return new ResponseEntity<String>(oid, HttpStatus.OK);
    }
    @RequestMapping(value ="/query/{oid}/{username}" ,method = RequestMethod.GET)
    public ResponseEntity<List<Cart>> queryCart(@PathVariable  String oid,
                                                @PathVariable  String username){
        Map map=new HashMap<>();
        map.put("in_oid",oid);
        map.put("in_username",username);
        List<Cart> list=service.queryCart(map);
        return new ResponseEntity(list, HttpStatus.OK);
    }
    @RequestMapping(value="/del",method = RequestMethod.DELETE)
    public ResponseEntity<String> delCart(@RequestBody Cart cart){
        Map map=new HashMap<>();
        map.put("in_itemid",cart.getItemid());
        map.put("in_username",cart.getUsername());
        map.put("in_oid",cart.getOrderid());


        service.delCart(map);

        return new ResponseEntity( cart.getOrderid(),HttpStatus.OK);
    }
    @RequestMapping(value="/up",method = RequestMethod.PUT)
    public ResponseEntity<String> uptCart(@RequestBody Cart cart){
        Map map=new HashMap<>();
        map.put("in_itemid",cart.getItemid());
        map.put("in_username",cart.getUsername());
        map.put("in_orderid",cart.getOrderid());
        map.put("in_quantity",cart.getQuantity());

        service.uptCart(map);


        return new ResponseEntity( cart.getOrderid(),HttpStatus.OK);
    }
}
