/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 100 *
FROM [dbo].[order_products__prior] a
left join dbo.orders b on a.[order_id]=b.[order_id]
left join dbo.[products] c on a.product_id = c.product_id
left join dbo.[departments] d on c.department_id=d.department_id
left join dbo.[aisles] e on c.aisle_id = e.aisle_id

--add_to_cart_order	,order_dow,	order_hour_of_day	,days_since_prior_order, department	, aisle,	reordered

SELECT TOP 100 [user_id],a.product_id, add_to_cart_order	,order_dow,	order_hour_of_day	,convert(float,days_since_prior_order) as days_since_prior_order, department	, aisle,	reordered
FROM [dbo].[order_products__prior] a
left join dbo.orders b on a.[order_id]=b.[order_id]
left join dbo.[products] c on a.product_id = c.product_id
left join dbo.[departments] d on c.department_id=d.department_id
left join dbo.[aisles] e on c.aisle_id = e.aisle_id


select top 10*
from [dbo].[order_products__train]

select eval_set, count(*)
from [dbo].[orders]
group by eval_set

select top 10*
from [dbo].[order_products__prior]
where order_id =1

--SELECT TOP 100 [user_id],a.product_id, add_to_cart_order	,order_dow,	order_hour_of_day	,days_since_prior_order, department	, aisle,	reordered
--FROM [dbo].[order_products__train] a
--left join dbo.orders b on a.[order_id]=b.[order_id]
--left join dbo.[products] c on a.product_id = c.product_id
--left join dbo.[departments] d on c.department_id=d.department_id
--left join dbo.[aisles] e on c.aisle_id = e.aisle_id

