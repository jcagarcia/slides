package es.valenciajug.sorteo.web.html;
import es.valenciajug.sorteo.domain.Person;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = PeopleItemThymeleafController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, type = ControllerType.ITEM)
@RooThymeleaf
public class PeopleItemThymeleafController {
}
