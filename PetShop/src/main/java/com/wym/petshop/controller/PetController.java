package com.wym.petshop.controller;

import com.wym.petshop.model.Category;
import com.wym.petshop.model.Item;
import com.wym.petshop.model.Product;
import com.wym.petshop.service.PetServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/pet")
public class PetController {
    @Autowired
    private PetServiceImpl service;
    //查询宠物种类
    @RequestMapping(value = "/queryc",method = RequestMethod.GET)
    public ResponseEntity<List<Category>> queryCategory(){
         List<Category> list= service.selectByCategory();
         if(list.size()>0){
             return new ResponseEntity<List<Category>>(list, HttpStatus.OK);
         }else{
             return new ResponseEntity<List<Category>>(list, HttpStatus.CONFLICT);
         }
    }
//通过种类查询产品
    @RequestMapping(value = "/queryp/{catid}",method = RequestMethod.GET)
    public ResponseEntity<List<Product>> queryProduct(@PathVariable String catid) {
        List<Product> list = service.selectByProduct(catid);
        if(list.size()>0){
            return new ResponseEntity<List<Product>>(list, HttpStatus.OK);
        }else{
            return new ResponseEntity<List<Product>>(list, HttpStatus.CONFLICT);
        }
    }
    @RequestMapping(value = "/queryis/{proid}",method = RequestMethod.GET)
    public ResponseEntity<List<Item>> queryItems(@PathVariable String proid) {
        List<Item> list = service.selectByItems(proid);
        if(list.size()>0){
            return new ResponseEntity<List<Item>>(list, HttpStatus.OK);
        }else{
            return new ResponseEntity<List<Item>>(list, HttpStatus.CONFLICT);
        }
    }
    @RequestMapping(value = "/queryi/{itemid}",method = RequestMethod.GET)
    public ResponseEntity<Item> queryItem(@PathVariable String itemid) {
        Item item= service.selectByPrimaryKey(itemid);
        if(item!=null){
            return new ResponseEntity<Item>(item, HttpStatus.OK);
        }else{
            return new ResponseEntity<Item>(item, HttpStatus.CONFLICT);
        }
    }
}
