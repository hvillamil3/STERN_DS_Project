/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) *
  FROM [dbo].[order_products__prior]
  
  
  select top 10 *
  from [dbo].[order_products__prior_train]

  --ALTER table [order_products__prior]
  --Add Label char(5)
  --AS 'Train' where [order_products__prior].order_id in (select order_id from [order_products__prior_train])


  Update [order_products__prior]
  set Label = 'Train'
  where [order_products__prior].order_id in (select order_id from [order_products__prior_train])
 --37 min
 
  Update [order_products__prior]
  set Label = 'Test'
  where [order_products__prior].order_id in (select order_id from [order_products__prior_test])
 

