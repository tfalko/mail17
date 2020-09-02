package pl.tfalkowski.mail17.service;


import pl.tfalkowski.mail17.model.User;

public interface UserService {
    User findByUserName(String name);

    void saveUser(User user);
    
}
