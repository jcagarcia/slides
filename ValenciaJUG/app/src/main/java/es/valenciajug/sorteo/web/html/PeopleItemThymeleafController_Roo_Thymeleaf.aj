// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.valenciajug.sorteo.web.html;

import es.valenciajug.sorteo.domain.Person;
import es.valenciajug.sorteo.service.api.PersonService;
import es.valenciajug.sorteo.web.html.PeopleCollectionThymeleafController;
import es.valenciajug.sorteo.web.html.PeopleItemThymeleafController;
import es.valenciajug.sorteo.web.html.PeopleItemThymeleafLinkFactory;
import io.springlets.web.NotFoundException;
import io.springlets.web.mvc.util.ControllerMethodLinkBuilderFactory;
import io.springlets.web.mvc.util.MethodLinkBuilderFactory;
import java.util.Locale;
import javax.validation.Valid;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponents;

privileged aspect PeopleItemThymeleafController_Roo_Thymeleaf {
    
    declare @type: PeopleItemThymeleafController: @Controller;
    
    declare @type: PeopleItemThymeleafController: @RequestMapping(value = "/people/{person}", name = "PeopleItemThymeleafController", produces = MediaType.TEXT_HTML_VALUE);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MessageSource PeopleItemThymeleafController.messageSource;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PeopleItemThymeleafController> PeopleItemThymeleafController.itemLink;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private MethodLinkBuilderFactory<PeopleCollectionThymeleafController> PeopleItemThymeleafController.collectionLink;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param personService
     * @param messageSource
     * @param linkBuilder
     */
    @Autowired
    public PeopleItemThymeleafController.new(PersonService personService, MessageSource messageSource, ControllerMethodLinkBuilderFactory linkBuilder) {
        setPersonService(personService);
        setMessageSource(messageSource);
        setItemLink(linkBuilder.of(PeopleItemThymeleafController.class));
        setCollectionLink(linkBuilder.of(PeopleCollectionThymeleafController.class));
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return MessageSource
     */
    public MessageSource PeopleItemThymeleafController.getMessageSource() {
        return messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param messageSource
     */
    public void PeopleItemThymeleafController.setMessageSource(MessageSource messageSource) {
        this.messageSource = messageSource;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PeopleItemThymeleafController> PeopleItemThymeleafController.getItemLink() {
        return itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param itemLink
     */
    public void PeopleItemThymeleafController.setItemLink(MethodLinkBuilderFactory<PeopleItemThymeleafController> itemLink) {
        this.itemLink = itemLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return MethodLinkBuilderFactory
     */
    public MethodLinkBuilderFactory<PeopleCollectionThymeleafController> PeopleItemThymeleafController.getCollectionLink() {
        return collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param collectionLink
     */
    public void PeopleItemThymeleafController.setCollectionLink(MethodLinkBuilderFactory<PeopleCollectionThymeleafController> collectionLink) {
        this.collectionLink = collectionLink;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @param locale
     * @param method
     * @return Person
     */
    @ModelAttribute
    public Person PeopleItemThymeleafController.getPerson(@PathVariable("person") Long id, Locale locale, HttpMethod method) {
        Person person = null;
        if (HttpMethod.PUT.equals(method)) {
            person = personService.findOneForUpdate(id);
        } else {
            person = personService.findOne(id);
        }
        
        if (person == null) {
            String message = messageSource.getMessage("error_NotFound", new Object[] {"Person", id}, "The record couldn't be found", locale);
            throw new NotFoundException(message);
        }
        return person;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @param model
     * @return ModelAndView
     */
    @GetMapping(name = "show")
    public ModelAndView PeopleItemThymeleafController.show(@ModelAttribute Person person, Model model) {
        model.addAttribute("person", person);
        return new ModelAndView("people/show");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/inline", name = "showInline")
    public ModelAndView PeopleItemThymeleafController.showInline(@ModelAttribute Person person, Model model) {
        model.addAttribute("person", person);
        return new ModelAndView("people/showInline :: inline-content");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param dataBinder
     */
    @InitBinder("person")
    public void PeopleItemThymeleafController.initPersonBinder(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PeopleItemThymeleafController.populateFormats(Model model) {
        model.addAttribute("application_locale", LocaleContextHolder.getLocale().getLanguage());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param model
     */
    public void PeopleItemThymeleafController.populateForm(Model model) {
        populateFormats(model);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @param model
     * @return ModelAndView
     */
    @GetMapping(value = "/edit-form", name = "editForm")
    public ModelAndView PeopleItemThymeleafController.editForm(@ModelAttribute Person person, Model model) {
        populateForm(model);
        
        model.addAttribute("person", person);
        return new ModelAndView("people/edit");
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @param result
     * @param version
     * @param concurrencyControl
     * @param model
     * @return ModelAndView
     */
    @PutMapping(name = "update")
    public ModelAndView PeopleItemThymeleafController.update(@Valid @ModelAttribute Person person, BindingResult result, @RequestParam("version") Integer version, @RequestParam(value = "concurrency", required = false, defaultValue = "") String concurrencyControl, Model model) {
        // Check if provided form contain errors
        if (result.hasErrors()) {
            populateForm(model);
            
            return new ModelAndView("people/edit");
        }
        // Concurrency control
        Person existingPerson = getPersonService().findOne(person.getId());
        if(person.getVersion() != existingPerson.getVersion() && StringUtils.isEmpty(concurrencyControl)){
            populateForm(model);
            model.addAttribute("person", person);
            model.addAttribute("concurrency", true);
            return new ModelAndView("people/edit");
        } else if(person.getVersion() != existingPerson.getVersion() && "discard".equals(concurrencyControl)){
            populateForm(model);
            model.addAttribute("person", existingPerson);
            model.addAttribute("concurrency", false);
            return new ModelAndView("people/edit");
        } else if(person.getVersion() != existingPerson.getVersion() && "apply".equals(concurrencyControl)){
            // Update the version field to be able to override the existing values
            person.setVersion(existingPerson.getVersion());
        }
        Person savedPerson = getPersonService().save(person);
        UriComponents showURI = getItemLink().to(PeopleItemThymeleafLinkFactory.SHOW).with("person", savedPerson.getId()).toUri();
        return new ModelAndView("redirect:" + showURI.toUriString());
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param person
     * @return ResponseEntity
     */
    @ResponseBody
    @DeleteMapping(name = "delete")
    public ResponseEntity<?> PeopleItemThymeleafController.delete(@ModelAttribute Person person) {
        getPersonService().delete(person);
        return ResponseEntity.ok().build();
    }
    
}
