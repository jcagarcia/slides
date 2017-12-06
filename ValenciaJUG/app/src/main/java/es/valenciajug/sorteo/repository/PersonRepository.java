package es.valenciajug.sorteo.repository;
import es.valenciajug.sorteo.domain.Person;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;

/**
 * = PersonRepository
 *
 * TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Person.class)
public interface PersonRepository extends PersonRepositoryCustom, DetachableJpaRepository<Person, Long> {
}
