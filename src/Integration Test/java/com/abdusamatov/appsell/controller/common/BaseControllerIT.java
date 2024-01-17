package com.abdusamatov.appsell.controller.common;

import com.abdusamatov.appsell.repositories.ImageRepository;
import com.abdusamatov.appsell.repositories.ProductRepository;
import com.abdusamatov.appsell.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.junit.runner.RunWith;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.NONE)
@Transactional
public abstract class BaseControllerIT {
    @Autowired
    protected UserRepository userRepository;
    @Autowired
    protected ProductRepository productRepository;
    @Autowired
    protected ImageRepository imageRepository;
}
