package com.erp.qy.service;

import com.erp.qy.dao.EmpDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class EmpServiceImpl implements EmpService{
    @Autowired
    private EmpDao empDao;
    /**
     * emp查询列表
     * @param map
     * @return
     */
    @Override
    public List<Map> getEmpList(Map map) {
        return empDao.getEmpList(map);
    }

    /**
     * 查询用户
     * @param
     * @return
     */
    @Override
    public List<Map> selectEmp(String username) {
        return empDao.selectEmp(username);
    }

    /**
     * 更改员工
     * @param map
     * @return
     */
    @Override
    public int updateEmp(Map map) {
        return empDao.updateEmp(map);
    }

    /**
     * 新增员工
     * @param map
     * @return
     */
    @Override
    public int insertEmp(Map map) {
        return empDao.insertEmp(map);
    }

    /**
     * 删除员工
     * @param
     * @return
     */
    @Override
    public int deleteEmp(Integer ID) {
            return empDao.deleteEmp(ID);
    }

    /**
     * 批量删除
     * @param
     * @return
     */
    @Override
    public int batchDel(Map ids) {
        String ides = ids.get("ids") + "";
        String[] idArr = ides.split(",");
        List idList=new ArrayList();
        for (int i = 0; i < idArr.length; i++) {
            idList.add(Integer.valueOf(idArr[i]));
        }
        int i = empDao.batchDel(idList);
        return i;
    }

    /**
     * 更改密码
     * @param passWord
     * @param userName
     * @return
     */
    @Override
    public int updatepassword(String passWord, String userName) {
        return empDao.updatepassword(passWord,userName);
    }
}
