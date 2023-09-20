/* 
1. My partner and I want to come by each of the stores in person and meet the managers. 
Please send over the managers’ names at each store, with the full address 
of each property (street address, district, city, and country please).  
*/ 

select 
	CONCAT(staff.first_name, ' ', staff.last_name) as "manager name",
    address.address as "street address",
    address.district,
    city.city,
    country.country
from staff 
		inner join address 
			on staff.address_id = address.address_id
		inner join city 
			on address.city_id = city.city_id
		inner join country 
			on city.country_id = country.country_id;



	
/*
2.	I would like to get a better understanding of all of the inventory that would come along with the business. 
Please pull together a list of each inventory item you have stocked, including the store_id number, 
the inventory_id, the name of the film, the film’s rating, its rental rate and replacement cost. 
*/

select
	inventory.store_id,
    inventory.inventory_id,
    film.title AS "the name of the film",
    film.rating AS "the film’s rating",
    film.rental_rate AS  "its rental rate",
    film.replacement_cost AS "replacement cost"
from inventory   
	left join film 
		on inventory.film_id = film.film_id;




/* 
3.	From the same list of films you just pulled, please roll that data up and provide a summary level overview 
of your inventory. We would like to know how many inventory items you have with each rating at each store. 
*/

select
	inventory.store_id,
	film.rating AS "the film’s rating",
    count(inventory.inventory_id) as "inventory items"
from inventory 
	inner join film 
		on inventory.film_id = film.film_id
group by 
	inventory.store_id,
    film.rating;	



/* 
4. Similarly, we want to understand how diversified the inventory is in terms of replacement cost. We want to 
see how big of a hit it would be if a certain category of film became unpopular at a certain store.
We would like to see the number of films, as well as the average replacement cost, and total replacement cost, 
sliced by store and film category. 
*/ 



select 
	inventory.store_id,
    category.name,
    count(inventory.inventory_id) as "number of films",
    avg(film.replacement_cost) as "average replacement cost",
    sum(film.replacement_cost) as "total replacement cost"
from inventory 
	inner join film 
		on inventory.film_id = film.film_id
    inner join film_category 
		on film.film_id = film_category.film_id
    inner join category 
		on film_category.category_id = category.category_id
group by 
	inventory.store_id,
	category.name;


/*
5.	We want to make sure you folks have a good handle on who your customers are. Please provide a list 
of all customer names, which store they go to, whether or not they are currently active, 
and their full addresses – street address, city, and country. 
*/

select
	CONCAT(customer.first_name, ' ', customer.last_name) as "customer name",
    customer.store_id,
    (case
		when customer.active = 1 then "currently active"
        when customer.active = 0 then "not currently active" 
	end) as  "active",
    address.address as "street address",
    address.district,
    city.city,
    country.country
from customer 
	left join address 
		on customer.address_id = address.address_id
    left join city 
		on  address.city_id = city.city_id
    left join country 
		on city.country_id = country.country_id;


/*
6.	We would like to understand how much your customers are spending with you, and also to know 
who your most valuable customers are. Please pull together a list of customer names, their total 
lifetime rentals, and the sum of all payments you have collected from them. It would be great to 
see this ordered on total lifetime value, with the most valuable customers at the top of the list. 
*/

SELECT
    CONCAT(customer.first_name, ' ', customer.last_name) as "customer name",
    count(rental.rental_id) as "lifetime rentals",
    sum(payment.amount) as "total collected"
FROM 
    customer
LEFT JOIN rental 
    ON customer.customer_id = rental.customer_id
LEFT JOIN payment
    ON rental.rental_id = payment.rental_id
GROUP BY
    customer.first_name, customer.last_name
ORDER BY 
    "total collected" DESC;



    
/*
7. My partner and I would like to get to know your board of advisors and any current investors.
Could you please provide a list of advisor and investor names in one table? 
Could you please note whether they are an investor or an advisor, and for the investors, 
it would be good to include which company they work with. 
*/

select
	"investor" as type,
    first_name,
    last_name,
    company_name
from investor
 
 union

select
	"advisor" as type,
	first_name,
	last_name,
    null
from advisor;


/*
8. We're interested in how well you have covered the most-awarded actors. 
Of all the actors with three types of awards, for what % of them do we carry a film?
And how about for actors with two types of awards? Same questions. 
Finally, how about actors with just one award? 
*/

SELECT
	CASE 
		WHEN actor_award.awards = 'Emmy, Oscar, Tony ' THEN '3 awards'
        WHEN actor_award.awards IN ('Emmy, Oscar','Emmy, Tony', 'Oscar, Tony') THEN '2 awards'
		ELSE '1 award'
	END AS number_of_awards, 
    AVG(CASE WHEN actor_award.actor_id IS NULL THEN 0 ELSE 1 END) AS pct_w_one_film
	
FROM actor_award
	

GROUP BY 
	number_of_awards;