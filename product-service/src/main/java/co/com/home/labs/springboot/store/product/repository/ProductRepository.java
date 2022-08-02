package co.com.home.labs.springboot.store.product.repository;

import co.com.home.labs.springboot.store.product.entity.Category;
import co.com.home.labs.springboot.store.product.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface ProductRepository  extends JpaRepository<Product, Long> {
    public List<Product> findByCategory(Category category);
}