--1
CREATE TABLE products (
    id_product INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    id_category INTEGER,
    FOREIGN KEY (id_category) REFERENCES categories(id_category)
);

-- 2

CREATE TABLE category (
    id_category INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

-- 3
CREATE TABLE nutritions (
    id_nutrition INTEGER PRIMARY KEY,
    id_product INTEGER NOT NULL,
    name TEXT NOT NULL,
    calories REAL NOT NULL,
    fats REAL NOT NULL,
    sugar REAL NOT NULL,
    FOREIGN KEY (id_product) REFERENCES products(id_product)
);

-- 4
CREATE TABLE orders (
    id_order INTEGER PRIMARY KEY,
    time_date TEXT NOT NULL,
    address TEXT NOT NULL,           
    name_customer TEXT NOT NULL,
    ph_customer TEXT NOT NULL,
    price_total REAL NOT NULL
);

-- 5

CREATE TABLE orders_products (
    id_order INTEGER NOT NULL,
    id_product INTEGER NOT NULL,
    amount INTEGER NOT NULL,
    PRIMARY KEY (id_order, id_product),
    FOREIGN KEY (id_order) REFERENCES orders(id_order),
    FOREIGN KEY (id_product) REFERENCES products(id_product)
);
