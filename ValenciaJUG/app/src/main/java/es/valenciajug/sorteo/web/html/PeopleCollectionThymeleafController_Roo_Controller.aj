// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.valenciajug.sorteo.web.html;

import es.valenciajug.sorteo.service.api.PersonService;
import es.valenciajug.sorteo.web.html.PeopleCollectionThymeleafController;

privileged aspect PeopleCollectionThymeleafController_Roo_Controller {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PersonService PeopleCollectionThymeleafController.personService;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PersonService
     */
    public PersonService PeopleCollectionThymeleafController.getPersonService() {
        return personService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param personService
     */
    public void PeopleCollectionThymeleafController.setPersonService(PersonService personService) {
        this.personService = personService;
    }
    
}