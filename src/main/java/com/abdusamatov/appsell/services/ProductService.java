package com.abdusamatov.appsell.services;


import com.abdusamatov.appsell.models.Image;
import com.abdusamatov.appsell.models.Product;
import com.abdusamatov.appsell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository repository;

    public List<Product> list(String title){
        return title != null ? repository.findByTitle(title) : repository.findAll();
    }
    public void saveProduct(Product product, MultipartFile file1,
                            MultipartFile file2,MultipartFile file3) throws IOException {

        Image image1, image2, image3;
        if (file1.getSize()!=0){
            image1 = convertToImage(file1);
            image1.setPreviewImage(true);
            product.addImageToProduct(image1);
        }
        if (file2.getSize()!=0){
            image2 = convertToImage(file2);
            product.addImageToProduct(image2);
        }
        if (file3.getSize()!=0){
            image3 = convertToImage(file3);
            product.addImageToProduct(image3);
        }

        log.info("Saving new Product. Title: {}; Author: {}", product.getTitle(), product.getAuthor());
        Product productForPreviewImageID = repository.save(product);
        productForPreviewImageID.setPreviewImageId(productForPreviewImageID.getImages().get(0).getId());
        repository.save(product);
    }

    private Image convertToImage(MultipartFile file) throws IOException {
        Image image = new Image();
        image.setName(file.getName());
        image.setOriginalFileName(file.getOriginalFilename());
        image.setContentType(file.getContentType());
        image.setSize(file.getSize());
        image.setBytes(file.getBytes());
        return image;
    }

    public void deleteProduct(Long id){
        repository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return repository.findById(id).orElse(null);
    }
}