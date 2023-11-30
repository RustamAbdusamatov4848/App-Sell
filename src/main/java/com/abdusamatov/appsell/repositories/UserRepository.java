package com.abdusamatov.appsell.repositories;

import com.abdusamatov.appsell.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,Long> {
    User findByEmail(String email);
}
