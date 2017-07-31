package ru.javawebinar.topjava.util;

import ru.javawebinar.topjava.model.Role;
import ru.javawebinar.topjava.model.User;

import java.util.*;

/**
 * Created by Admin on 25.07.2017.
 */
public class UsersUtil {


    public static List<User> getUSERS() {
        return USERS;
    }



    public static final List<User> USERS= Arrays.asList(new User(1,"Elena","germiona200707@mail.ru","21031985", Role.ROLE_ADMIN),
            new User(2,"begemot","fdghkj@mail.ru","23433",Role.ROLE_USER),new User(3,"avatar","efdf@gmail.com","dsfgfg",Role.ROLE_USER));

    public static List<User> getSorted(List<User> users){
        final List<User> sortedUsers=new ArrayList<>();

        Collections.sort(sortedUsers, new Comparator<User>() {
            public int compare(User o1, User o2) {
                return o1.toString().compareTo(o2.toString());
            }
        });

        return sortedUsers;
    }
}
