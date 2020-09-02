package pl.tfalkowski.mail17.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.tfalkowski.mail17.model.Category;


import java.util.List;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {

   // List<Category> findAllByUser_Id(Long id);

}
