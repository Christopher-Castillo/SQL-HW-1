--1. How many actors are there with the last name ‘Wahlberg’? 
select COUNT(LAST_NAME)
from ACTOR 
where LAST_NAME ='Wahlberg';
--2. How many payments were made between $3.99 and $5.99? 
select COUNT(PAYMENT)
from PAYMENT
where AMOUNT > 3.99 and AMOUNT < 5.99;
--3. What film does the store have the most of? (search in inventory) 
select FILM_ID, COUNT(FILM_ID)
from inventory 
group by film_id , 
order by COUNT(FILM_ID)desc ;
--4. How many customers have the last name ‘William’? 
select count(last_name)
from customers 
where LAST_NAME = 'William';
--5. What store employee (get the id) sold the most rentals? 
select staff_id, COUNT(rental_id)
from rental 
group by staff_id 
order by COUNT(RENTAL_ID);
--6. How many different district names are there? 
select COUNT(district), district 
from address 
group by district
order by COUNT desc;
--7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, COUNT(FILM_ACTOR)
from film_actor
group by film_id
order by COUNT(FILM_ACTOR)desc ;
--RESULT IS FILM_ID 508
select TITLE
from film 
where film_id =  508;
-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 
select count(last_name)
from customer
where store_id = 1 and last_name = '%es';
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
select amount,count(amount)
from payment 
where customer_id > 380 and customer_id <430
group by amount having count(rental_id) >250; 
--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
select count(rating), rating 
from film 
group by rating 
order by count(rating)desc; 