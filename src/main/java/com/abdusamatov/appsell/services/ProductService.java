package com.abdusamatov.appsell.services;


import com.abdusamatov.appsell.models.Product;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private final List<Product> productList = new ArrayList<>();
    private long ID = 0;

    {
        productList.add(new Product(++ID,"Playstation5","simple playstation",599,"Moscow","Rustam"));
        productList.add(new Product(++ID,"Yo-Yo","wondering yo-yo toy",4999,"Moscow","Dima"));
    }
    public List<Product> list(){
        return productList;
    }
    public void saveProduct(Product product){
        product.setId(++ID);
        productList.add(product);
    }
    public void deleteProduct(Long id){
        productList.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id) {
        for (Product product : productList) {
            if (product.getId().equals(id)){
                return product;
            }
        }
        return null;
    }
}