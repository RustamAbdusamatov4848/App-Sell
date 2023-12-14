package com.abdusamatov.appsell.controllers;

import com.abdusamatov.appsell.models.Product;
import com.abdusamatov.appsell.services.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductController {

    private final ProductService service;

    @GetMapping("/")
    public String products(@RequestParam(name = "title",required = false) String title,
                           Model model,Principal principal){
        model.addAttribute("products",service.list(title));
        model.addAttribute("user",service.getUserByPrincipal(principal));

        return "products";
    }

    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file1") MultipartFile file1, @RequestParam("file2") MultipartFile file2,
                                @RequestParam("file3") MultipartFile file3, Product product, Principal principal) throws IOException {

        service.saveProduct(product,file1,file2,file3,principal);
        return "redirect:/";
    }
    @GetMapping("/product/{id}")
    public String productInfo(@PathVariable Long id,Model model){
        Product product = service.getProductById(id);
        model.addAttribute("product",product);
        model.addAttribute("images",product.getImages());
        return "productInfo";
    }
    @PostMapping("/product/delete/{id}")
    public String delete(@PathVariable Long id){
        service.deleteProduct(id);
        return "redirect:/";
    }
}