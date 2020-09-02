package pl.tfalkowski.mail17.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.tfalkowski.mail17.model.Letter;

@Repository
public interface LetterRepository extends JpaRepository<Letter, Long> {

}
