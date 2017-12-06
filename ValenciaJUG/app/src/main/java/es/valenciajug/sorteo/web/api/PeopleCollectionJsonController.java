package es.valenciajug.sorteo.web.api;
import es.valenciajug.sorteo.domain.Person;
import io.springlets.data.domain.GlobalSearch;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.controller.annotations.responses.json.RooJSON;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;
import java.util.Random;

/**
 * = PeopleCollectionJsonController
 *
 * TODO Auto-generated class documentation
 *
 */
@RooController(entity = Person.class, pathPrefix = "/api", type = ControllerType.COLLECTION)
@RooJSON
public class PeopleCollectionJsonController {
}
