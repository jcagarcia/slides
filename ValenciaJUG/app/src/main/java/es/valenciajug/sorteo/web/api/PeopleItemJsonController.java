package es.valenciajug.sorteo.web.api;
import es.valenciajug.sorteo.domain.Person;
import io.springlets.web.NotFoundException;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

/**
 * = PeopleItemJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, pathPrefix = "/api", type = ControllerType.ITEM)
@RooJSON
public class PeopleItemJsonController {

    /**
     * Obtains a random person ignoring the provided identifier
     *
     * @param id
     * @return Person
     */
    @ModelAttribute
    public Person getPerson(@PathVariable("person") Long id) {
        Person person = getPersonService().findRandom();
        if (person == null) {
            throw new NotFoundException(String.format("Person with identifier '%s' not found",id));
        }
        return person;
    }
}
