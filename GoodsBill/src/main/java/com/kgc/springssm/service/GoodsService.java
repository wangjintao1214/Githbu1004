package com.kgc.springssm.service;

import com.kgc.springssm.pojo.Goods;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-04 15:54
 */
public interface GoodsService {
    List<Goods> selectAllByGoodsdistrict(Integer goodsdistrict);
    Goods selectAllById(Integer id);
    int upd(Goods goods);
}
