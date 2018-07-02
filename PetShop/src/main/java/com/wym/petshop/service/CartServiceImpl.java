package com.wym.petshop.service;

import com.wym.petshop.mapper.CartMapper;
import com.wym.petshop.mapper.OrdersMapper;
import com.wym.petshop.model.Cart;
import com.wym.petshop.model.Orders;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class CartServiceImpl {
    @Autowired
    private CartMapper dao;
    @Autowired
    private OrdersMapper odao;
    public int addCart(Map map){
        return dao.addCart(map);
    }

    public List<Cart> queryCart(Map map){
        return dao.queryCart(map);
    }
    public int delCart(Map map){
        return dao.delCart(map);
    }
    public  int uptCart(Map map){
        return dao.uptCart(map);
    }
    public int updateByPrimaryKeySelective(Orders record){
        return odao.updateByPrimaryKeySelective(record);
    }
}
