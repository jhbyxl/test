package mapper;

import entities.Goods;


import java.util.List;

public interface GoodsMapper {


    public List<Goods> list();
     public int add(Goods goods);
     public int delete(int goodsid);
     public Goods get(int goodsid);
     public int update(Goods goods);



}
