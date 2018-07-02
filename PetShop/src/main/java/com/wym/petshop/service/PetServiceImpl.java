package com.wym.petshop.service;

import com.wym.petshop.mapper.CategoryMapper;
import com.wym.petshop.mapper.ItemMapper;
import com.wym.petshop.mapper.ProductMapper;
import com.wym.petshop.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetServiceImpl {
    @Autowired
    private CategoryMapper dao;
    @Autowired
    private ProductMapper pdao;
    @Autowired
    private ItemMapper idao;
    public List<Category> selectByCategory(){
        CategoryExample example=new CategoryExample();
        example.createCriteria().andCatidIsNotNull();
       return dao.selectByExample(example);
    }

    public  List<Product> selectByProduct(String catid){
        ProductExample example=new ProductExample();
        example.createCriteria().andCatidEqualTo(catid);
        return pdao.selectByExample(example);
    }

    public  List<Item> selectByItems(String proid){
        ItemExample example=new ItemExample();
        example.createCriteria().andProductidEqualTo(proid);
        return idao.selectByExample(example);
    }
    public Item selectByPrimaryKey(String itemid){
        return idao.selectByPrimaryKey(itemid);
    }
}
