package com.kgc.springssm.service.impl;

import com.kgc.springssm.mapper.GoodsMapper;
import com.kgc.springssm.pojo.Goods;
import com.kgc.springssm.pojo.GoodsExample;
import com.kgc.springssm.service.GoodsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-04 15:54
 */
@Service
public class GoodsServiceImpl implements GoodsService{
    @Resource
    GoodsMapper goodsMapper;

    @Override
    public List<Goods> selectAllByGoodsdistrict(Integer goodsdistrict) {
        GoodsExample example=new GoodsExample();
        GoodsExample.Criteria criteria = example.createCriteria();
        if(goodsdistrict!=null||goodsdistrict!=0){
            criteria.andGoodsdistrictEqualTo(goodsdistrict);
        }
        List<Goods> list = goodsMapper.selectByExample(example);
        return list;
    }

    @Override
    public Goods selectAllById(Integer id) {
        Goods goods = goodsMapper.selectByPrimaryKey(id);
        return goods;
    }

    @Override
    public int upd(Goods goods) {
        int i =goodsMapper.updateByPrimaryKeySelective(goods);
        return i;
    }
}
