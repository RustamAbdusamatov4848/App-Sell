package com.abdusamatov.appsell.services;


import com.abdusamatov.appsell.models.Product;
import com.abdusamatov.appsell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository repository;

    public List<Product> list(String title){
        return title != null ? repository.findByTitle(title) : repository.findAll();
    }
    public void saveProduct(Product product){
        log.info("Saving new {}",product);
        repository.save(product);
    }
    public void deleteProduct(Long id){
        repository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return repository.findById(id).orElse(null);
    }
}