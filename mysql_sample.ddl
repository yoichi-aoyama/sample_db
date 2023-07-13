CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  user_name VARCHAR(100)
);

CREATE TABLE items (
  item_id INTEGER PRIMARY KEY,
  item_name VARCHAR(100)
);

CREATE TABLE user_items (
  user_item_id INTEGER PRIMARY KEY,
  user_id integer,
  item_id integer,
  constraint fk_user_id
    foreign key (user_id) references users(user_id),
  constraint fk_item_id
    foreign key (item_id) references items(item_id)
);

