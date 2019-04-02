package com.erp.qy.service;

import com.erp.qy.dao.Userdao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Service
public class UserserviceImpl implements Userservice {
    @Autowired
    private Userdao userdao;

    @Override
    public Map getUserInfo() {
        List<Map> userInfo = userdao.getUserList();
        Map map = new HashMap();
        map.put("userInfo",userInfo);
        return map;
    }

    @Override
    public int addUser(Map map) {
        return userdao.addCar(map);
    }

    @Override
    public List<Map> getDeptListBy(Map map) {
        return userdao.getDeptListBy(map);
    }

    @Override
    public int updateUser(Map map) {
        return userdao.updateUser(map);
    }

    @Override
    public int deleteUser(Integer ID) {
        return userdao.deleteUser(ID);
    }


}
