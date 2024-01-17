package com.abdusamatov.appsell.services;


import com.abdusamatov.appsell.models.Image;
import com.abdusamatov.appsell.models.Product;
import com.abdusamatov.appsell.models.User;
import com.abdusamatov.appsell.repositories.ProductRepository;
import com.abdusamatov.appsell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class ProductService {

    private final ProductRepository productRepository;
    private final UserRepository userRepository;

    @Transactional(readOnly = true)
    public List<Product> list(String title){
        return title != null ? productRepository.findByTitle(title) : productRepository.findAll();
    }
    @Transactional
    public void saveProduct(Product product, MultipartFile file1,
                            MultipartFile file2, MultipartFile file3,Principal principal) throws IOException {

        product.setUser(getUserByPrincipal(principal));
        Image image1, image2, image3;
        saveImages(file1,file2,file3,product);

        log.info("Saving new Product. Title: {}; Author email: {}", product.getTitle(), product.getUser().getEmail());
        Product productForPreviewImageID = productRepository.save(product);
        productForPreviewImageID.setPreviewImageId(productForPreviewImageID.getImages().get(0).getId());
        productRepository.save(product);
    }
    @Transactional
    public void deleteProduct(Long id){
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    private void saveImages(MultipartFile file1, MultipartFile file2,
                            MultipartFile file3,Product product) throws IOException {

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
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal==null) return new User();
        return userRepository.findByEmail(principal.getName());
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
}