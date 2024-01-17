package com.abdusamatov.appsell.builders;

import com.abdusamatov.appsell.models.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class ListProductGenerator {
    private final List<Product> productList = new ArrayList<>();
    private final List <String> cities = new ArrayList<>();
    private final Random random = new Random();
    private Long ID = 1L;

    public ListProductGenerator() {
        cities.add("Москва");
        cities.add("Санкт-Петербург");
        cities.add("Калининград");
        cities.add("Тюмень");
        cities.add("Сочи");
        cities.add("Нижний Новгород");
        cities.add("Казань");
        cities.add("Екатеринбург");
        cities.add("Краснодар");
        cities.add("Новосибирск");
    }

    public List<Product> generateProductList(){
        productList.clear();
        for (int i = 0; i < 10; i++) {

        }
        setID();
        return productList;
    }

    private void setID() {
        this.ID = 1L;
    }

    private String getRandomCity(){
        return cities.get(random.nextInt(9));
    }
}
