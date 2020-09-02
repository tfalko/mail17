package pl.tfalkowski.mail17.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;

@Getter
@Setter
@Entity
@Table(name="letter")
public class Letter {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Size(min=2, max=200)
    private String name;

    @Size(max=200)
    private String description;

    private LocalDateTime created;

    private boolean archived = false;

    @ManyToOne
    private Category category;

    @ManyToOne
    private Sender sender;

    @PrePersist
    public void setCreatedOnPersist() {
        created = LocalDateTime.now();
    }
//    public User getUser() {
//        return user;
//    }
//
//    public void setUser(User user) {
//        this.user = user;
//    }



//    @ManyToOne(cascade = CascadeType.MERGE)
//    @JoinColumn(name="user_id")
//    private User user;
}
