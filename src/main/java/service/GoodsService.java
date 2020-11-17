package service;

import entities.Goods;


import java.util.List;

public interface GoodsService {

      List<Goods> list();
      void add(Goods goods);
      int delete(int goodsid);
      void update(Goods goods);
      Goods get(int goodsid);


}
