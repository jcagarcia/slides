package es.valenciajug.sorteo.service.impl;
import es.valenciajug.sorteo.domain.Person;
import es.valenciajug.sorteo.service.api.PersonService;
import io.springlets.web.NotFoundException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.layers.service.annotations.RooServiceImpl;

import java.util.List;
import java.util.Random;

/**
 * = PersonServiceImpl
 *
 * TODO Auto-generated class documentation
 *
 */
@RooServiceImpl(service = PersonService.class)
public class PersonServiceImpl implements PersonService {

    /**
     * Obtains a random person
     *
     * @return Person
     */
    @Override
    public Person findRandom() {
        // Obtain all the people registered in the database
        List<Person> people = getPersonRepository().findAll();

        if (people.size() == 0) {
            throw new NotFoundException("Any person registered in the system");
        }

        // Generate random index
        Random random = new Random();
        int index = random.nextInt(people.size());

        // Obtain the person using the index position
        return people.get(index);
    }

}
