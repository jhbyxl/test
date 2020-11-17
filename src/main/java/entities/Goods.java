package entities;

public class Goods {

//       商品序号
       private int goodsid;
//       商品名称
       private String goodname;
//       价格
       private int price;

    public int getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(int goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodname() {
        return goodname;
    }

    public void setGoodname(String goodname) {
        this.goodname = goodname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Goods{" +
                "goodsid=" + goodsid +
                ", goodname='" + goodname + '\'' +
                ", price=" + price +
                '}';
    }
}
