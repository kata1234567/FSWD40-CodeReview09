SELECT driver.first_name,driver.last_name,Reservation.reservation_date 
FROM driver 
INNER JOIN Reservation on Reservation.fk_driver_id=driver.driver_id WHERE CarLicence=123456789

SELECT driver.first_name,driver.last_name,additional_charges.damages, additional_charges.fuel_level 
FROM driver 
INNER JOIN additional_charges on driver.driver_id = additional_charges.fk_driver_id

SELECT driver.first_name, driver.last_name, Drop_off_location.city_name 
FROM driver 
INNER JOIN invoice on invoice.fk_driver_id = driver.driver_id 
INNER JOIN Drop_off_location on invoice.fk_drop_off_location_id = Drop_off_location.drop_off_location_id

SELECT driver.first_name, driver.last_name, Drop_off_location.city_name 
FROM driver INNER JOIN invoice on invoice.fk_driver_id = driver.driver_id 
INNER JOIN Drop_off_location on invoice.fk_drop_off_location_id = Drop_off_location.drop_off_location_id 
WHERE city_name = 'Vienna/Schwechat'


SELECT driver.first_name, driver.last_name, driver.driver_id 
FROM driver INNER JOIN invoice on invoice.fk_driver_id = driver.driver_id 
INNER JOIN Drop_off_location on invoice.fk_drop_off_location_id = Drop_off_location.drop_off_location_id 
RIGHT JOIN Pick_up_location ON invoice.fk_pick_up_location_id = Pick_up_location.pick_up_location_id 
WHERE Pick_up_location.city_name='Linz'


