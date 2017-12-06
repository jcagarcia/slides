package es.valenciajug.sorteo.repository;

import io.springlets.data.jpa.repository.support.QueryDslRepositorySupportExt;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepositoryCustomImpl;
import es.valenciajug.sorteo.domain.Person;

/**
 * = PersonRepositoryImpl
 *
 * TODO Auto-generated class documentation
 *
 */ 
@RooJpaRepositoryCustomImpl(repository = PersonRepositoryCustom.class)
public class PersonRepositoryImpl extends QueryDslRepositorySupportExt<Person> {

    /**
     * TODO Auto-generated constructor documentation
     */
    PersonRepositoryImpl() {
        super(Person.class);
    }
}