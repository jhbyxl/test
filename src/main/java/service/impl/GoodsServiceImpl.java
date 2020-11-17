package service.impl;

import entities.Goods;
import mapper.GoodsMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.GoodsService;


import java.util.List;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    GoodsMapper goodsMapper;



    @Override
    public List<Goods> list() {
        return goodsMapper.list();
    }

    @Override
    public void add(Goods goods) {
        goodsMapper.add(goods);
    }

    @Override
    public int delete(int goodsid) {
        return goodsMapper.delete(goodsid);
    }


    @Override
    public void update(Goods goods) {
         goodsMapper.update(goods);
    }

    @Override
    public Goods get(int goodsid) {
        return goodsMapper.get(goodsid);
    }


}
