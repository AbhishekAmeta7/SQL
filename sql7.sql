use sakila;
select * from payment;
select customer_id , sum(amount) from payment
group by customer_id having sum(customer_id)>100; 

select sum(amount) from payment where amount>2 and customer_id = 1;

select customer_id ,sum(amount) from payment where amount>2 group by customer_id and customer_id = 1;

select customer_id , count(amount) from payment where amount between 2 and 6 group by customer_id;

select customer_id ,sum(amount) from payment where amount>2 group by customer_id;

# Gernal Function
select * from actor;
select first_name , if(first_name = 'Nick', True,False)
from actor;

select first_name , if(first_name = 'Nick', True,if(first_name = 'ED','Hii','Hello'))
from actor;

select first_name,
case 
when first_name = 'NICK' then "True"
end from actor;

select first_name,
case 
when first_name = 'NICK' then "True" 
else "False"
end from actor;
select first_name, case when first_name = "NICK" then "True"
when first_name = "ED" then "True" else "False" 
end As new from actor;

select * from payment;
select payment_id , amount,case when amount>6
 then  amount+amount*0.50
when amount>6 then  amount+amount*1.15
else  amount+amount * 0.10
end AS update_amount 
from payment; 

