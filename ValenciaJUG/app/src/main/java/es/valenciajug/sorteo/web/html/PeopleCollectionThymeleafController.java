package es.valenciajug.sorteo.web.html;
import es.valenciajug.sorteo.domain.Person;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PeopleCollectionThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class PeopleCollectionThymeleafController {
}
