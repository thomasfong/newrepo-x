-- 1.Insert the following new record to the account table 
--Tony, Stark, tony@starkent.com, Iam1ronM@n

INSERT INTO "account" (account_firstname, account_lastname, account_email, account_password) 
	VALUES('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');


-- 2. Modify the Tony Stark record to change the account_type to "Admin".

UPDATE "account" SET account_type = 'Admin' 
	WHERE account_id = 1;

-- 3. Delete the Tony Stark record from the database.

DELETE FROM "account" WHERE  account_id = 1;


-- 4.Modify the "GM Hummer" record to read "a huge interior" rather than "small interiors" using a single query.

SELECT REPLACE('"Do you have 6 kids and like to go offroading? The Hummer gives you the small interiors with an engine to get you out of any muddy or rocky situation.', 'small interiors', 'a huge interior')



-- 5. Use an inner join to select the make and model fields from the inventory table and the classification name field from the classification table for inventory items that belong to the "Sport" category.

SELECT i.inv_make, i.inv_model, c.classification_name
FROM inventory i
INNER JOIN classification c 
	ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

-- 6.Update all records in the inventory table to add "/vehicles" to the middle of the file path in the inv_image and inv_thumbnail columns using a single query.

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images', 'images/vehiles/'),
	inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');