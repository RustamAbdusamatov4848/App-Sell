package com.abdusamatov.appsell.builders;

import com.abdusamatov.appsell.models.Product;

import java.util.List;

public class ProductBuilder {
    private Product product;
    private static List<Product> productList;
    private static ListProductGenerator listProductGenerator;

    public static ProductBuilder product(String title){
        return new ProductBuilder()
                .title(title)
                .description(" ")
                .price(0)
                .city(" ");

    }
    public ProductBuilder title(String title){
        this.product.setTitle(title);
        return this;
    }
    public ProductBuilder description(String description){
        this.product.setDescription(description);
        return this;
    }
    public ProductBuilder price(int price){
        this.product.setPrice(price);
        return this;
    }
    public ProductBuilder city(String city){
        this.product.setCity(city);
        return this;
    }
    public static List<Product> generateListOfProduct(){
        return listProductGenerator.generateProductList();
    }
}
