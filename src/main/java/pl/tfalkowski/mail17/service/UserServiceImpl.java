package pl.tfalkowski.mail17.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.tfalkowski.mail17.model.User;
import pl.tfalkowski.mail17.repository.RoleRepository;
import pl.tfalkowski.mail17.repository.UserRepository;


@Service
public class UserServiceImpl implements UserService {

    public final UserRepository userRepository;
    public final RoleRepository roleRepository;
    public final BCryptPasswordEncoder passwordEncoder;


    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository,
                                    BCryptPasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    @Override
    public User findByUserName(String name) {
        return null;
    }

    @Override
    public void saveUser(User user) {

    }

//    @Override
//    public User findByUserName(String username) {
//        return userRepository.findByUsername(username);
//    }
//    @Override
//    public void saveUser(User user) {
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
//        user.setEnabled(1);
//        Role userRole = roleRepository.findByName("ROLE_USER");
//        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
//        userRepository.save(user);
//    }
}
