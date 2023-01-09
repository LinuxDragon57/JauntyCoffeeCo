USE JauntyCoffeeCo;

INSERT INTO Coffee_Shop (shop_name, city, state) VALUES
       ('Rocketzoid Café', 'Huntsville', 'AL'),
       ('The Talon', 'Lawrence', 'KS'),
       ('Liberty Coffee Shop', 'Philadelphia', 'PA');

INSERT INTO Employee (first_name, last_name, hire_date, job_title, shop_id) VALUES
    ('Tyler', 'Gautney', '2021-04-13', 'owner', 1),
    ('Samuel', 'Winchester', '2021-04-15', 'server', 1),
    ('Johnathon', 'Marks', '2021-10-28', 'manager', 2),
    ('Ryan', 'Lancaster', '2021-12-05', 'server', 2),
    ('Phineas', 'Flint', '2022-03-25', 'manger', 3),
    ('Ferb', 'Fletcher', '2022-03-25', 'manager', 3);

INSERT INTO Supplier (company_name, country, sales_contact_name, email) VALUES
    ('Colombia Coffee Co', 'Columbia', 'Juan Valdez', 'sales@columbiacoffee.us'),
    ('Brazilian Coffee Company', 'Brazil', 'Carmen Torres', 'sales@braziliancoffee.co'),
    ('Puerto Rican Coffee Roasters', 'United States', 'Angel Valles', 'sales@prfcoffee.com');

INSERT INTO Coffee (shop_id, supplier_id, coffee_name, price_per_pound) VALUES
    (3, 2, 'Organic Brazilian Whole Bean', 12.95),
    (2, 1, 'Abuela Laura Ground Roasted', 14.88),
    (1, 3, 'Alto Grande Premium', 26.99);
