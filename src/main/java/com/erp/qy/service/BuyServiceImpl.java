package com.erp.qy.service;

import com.erp.qy.dao.BuyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BuyServiceImpl implements BuyService{
    @Autowired
    private BuyDao buyDao;

    @Override
    public List<Map> buyList() {
        //System.out.println("开始执行");
        List<Map> buyList = buyDao.buyList();
       // System.out.println(buyList);
        return buyList;
    }

    @Override
    public List<Map> buyListBy(Map map) {
        //System.out.println("------:"+buyDao.buyListBy(map));
        return buyDao.buyListBy(map);
    }

    @Override
    public int buyAdd(Map map) {
        return buyDao.buyAdd(map);
    }

    @Override
    public int insertBuy_Equ(Map map) {
        return buyDao.insertBuy_Equ(map);
    }

    @Override
    public int buyUpdate(Map map) {
        return buyDao.buyUpdate(map);
    }

    @Override
    public int buyDelete(Integer id) {
        return buyDao.buyDelete(id);
    }

    @Override
    public int buyDel(Map ids) {
        String ides = ids.get("ids") + "";
        String[] idArr = ides.split(",");
        List IDs = new ArrayList();
        for (int i = 0; i< idArr.length;i++) {
            IDs.add(Integer.valueOf(idArr[i]));
        }
        int i =buyDao.buyDel(IDs);
        return  i;
    }
}
