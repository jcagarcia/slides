package es.valenciajug.sorteo.service.api;
import es.valenciajug.sorteo.domain.Person;
import org.springframework.roo.addon.layers.service.annotations.RooService;

/**
 * = PersonService
 *
 * TODO Auto-generated class documentation
 *
 */
@RooService(entity = Person.class)
public interface PersonService {

    /**
     * Defines an operation to obtain a random person
     *
     * @return
     */
    Person findRandom();
}
