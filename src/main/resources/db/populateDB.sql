DELETE FROM user_roles;
DELETE FROM users;
DELETE FROM meals;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password)
VALUES ('User', 'user@yandex.ru', 'password');

INSERT INTO users (name, email, password)
VALUES ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (role, user_id) VALUES
  ('ROLE_USER', 100000),
  ('ROLE_ADMIN', 100001);
INSERT INTO meals(user_id,datetime,description,calories) VALUES
  (
    '100001',NULL ,'light breakfast',200
),
  ('100001',NULL ,'big lunch',1500),
  ('100000',NULL ,'sous',100),('100000',NULL ,'ice-cream',500);