// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package es.valenciajug.sorteo.config.jackson;

import com.fasterxml.jackson.databind.module.SimpleModule;
import es.valenciajug.sorteo.config.jackson.DomainModelModule;
import es.valenciajug.sorteo.domain.Person;
import es.valenciajug.sorteo.web.api.PersonJsonMixin;
import org.springframework.boot.jackson.JsonComponent;

privileged aspect DomainModelModule_Roo_DomainModelModule {
    
    declare parents: DomainModelModule extends SimpleModule;
    
    declare @type: DomainModelModule: @JsonComponent;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     */
    public DomainModelModule.new() {
        // Mixin registration
        
        setMixInAnnotation(Person.class, PersonJsonMixin.class);
    }

}