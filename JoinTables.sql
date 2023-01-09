USE JauntyCoffeeCo;

SELECT shop_name, CONCAT(city, ', ', state), coffee_name, price_per_pound, company_name, sales_contact_name, email
FROM Coffee_Shop
INNER JOIN Coffee USING (shop_id)
INNER JOIN Supplier USING (supplier_id)
ORDER BY shop_name, company_name, coffee_name;