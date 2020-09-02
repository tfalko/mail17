package pl.tfalkowski.mail17.service;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

import java.util.Collection;

public class CurrentUser extends User {

    private final pl.tfalkowski.mail17.model.User user;
    public CurrentUser(String username, String password,
                       Collection<? extends GrantedAuthority> authorities,
                       pl.tfalkowski.mail17.model.User user) {
        super(username, password, authorities);
        this.user = user;
    }
    public pl.tfalkowski.mail17.model.User getUser() {return user;}


}

