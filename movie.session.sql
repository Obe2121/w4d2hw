CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
CREATE TABLE ticket(
    ticket_id SERIAL PRIMARY KEY,
    date_sold DATE,
    FOREIGN KEY(customer_id) REFERENCES(customer_id)
);
CREATE TABLE movie(
    movie_id SERIAL PRIMARY KEY,
    date_released DATE,
    date_removed DATE,
    FOREIGN KEY(customer_id) REFERENCES(customer_id),
    FOREIGN KEY(ticket_id) REFERENCES(ticket_id)
);
CREATE TABLE concession(
    item_id SERIAL PRIMARY KEY,
    price INTEGER(5,2),
    inventory INTEGER,
    FOREIGN KEY(customer_id) REFERENCES(customer_id)
);
