--select  top 100 * 
--from order_products__prior a



--select product_id, count(order_id)
--from order_products__prior
--group by product_id
--order by count(*) desc


--DECLARE @Output nvarchar(max) = N''
--DECLARE @PivotList varchar(max)
 

--select @PivotList = COALESCE(@PivotList + ', ', N'') + N'[' + product_id + N']'
 
--FROM     (
--          SELECT DISTINCT TOP 1000
--                  product_id
--          FROM    products a
--		  where exists(SELECT top 1000 STUFF = 1 , product_id, order_id FROM order_products__prior b
--		  where a.product_id=b.product_id)
--         ) AS CustProds;

--SET @Output = 'SELECT   [order_id]
--	, ' + @PivotList + '
--FROM  (SELECT top 1000 STUFF = 1 , product_id, order_id FROM order_products__prior) as P
--PIVOT ( count(STUFF) FOR P.product_id IN (' + @PivotList + ') ) AS PVT'
 
--EXEC sp_executesql @Output;
--99

--select max(add_to_cart_order)
--FROM order_products__prior b


--SELECT top 10 order_id, [7], [8], [9], [10]
--FROM order_products__prior b
--PIVOT (
--    MAX(product_id) 
--    FOR add_to_cart_order IN ([7], [8], [9], [10])
--) p


SELECT Cart_string = convert(nvarchar(1000),null),order_id,
      max(CASE WHEN IdOrderPerCart = 1 THEN product_id ELSE NULL END) AS [1],
max(CASE WHEN IdOrderPerCart = 2 THEN product_id ELSE NULL END) AS [2],
max(CASE WHEN IdOrderPerCart = 3 THEN product_id ELSE NULL END) AS [3],
max(CASE WHEN IdOrderPerCart = 4 THEN product_id ELSE NULL END) AS [4],
max(CASE WHEN IdOrderPerCart = 5 THEN product_id ELSE NULL END) AS [5],
max(CASE WHEN IdOrderPerCart = 6 THEN product_id ELSE NULL END) AS [6],
max(CASE WHEN IdOrderPerCart = 7 THEN product_id ELSE NULL END) AS [7],
max(CASE WHEN IdOrderPerCart = 8 THEN product_id ELSE NULL END) AS [8],
max(CASE WHEN IdOrderPerCart = 9 THEN product_id ELSE NULL END) AS [9],
max(CASE WHEN IdOrderPerCart = 10 THEN product_id ELSE NULL END) AS [10],
max(CASE WHEN IdOrderPerCart = 11 THEN product_id ELSE NULL END) AS [11],
max(CASE WHEN IdOrderPerCart = 12 THEN product_id ELSE NULL END) AS [12],
max(CASE WHEN IdOrderPerCart = 13 THEN product_id ELSE NULL END) AS [13],
max(CASE WHEN IdOrderPerCart = 14 THEN product_id ELSE NULL END) AS [14],
max(CASE WHEN IdOrderPerCart = 15 THEN product_id ELSE NULL END) AS [15],
max(CASE WHEN IdOrderPerCart = 16 THEN product_id ELSE NULL END) AS [16],
max(CASE WHEN IdOrderPerCart = 17 THEN product_id ELSE NULL END) AS [17],
max(CASE WHEN IdOrderPerCart = 18 THEN product_id ELSE NULL END) AS [18],
max(CASE WHEN IdOrderPerCart = 19 THEN product_id ELSE NULL END) AS [19],
max(CASE WHEN IdOrderPerCart = 20 THEN product_id ELSE NULL END) AS [20],
max(CASE WHEN IdOrderPerCart = 21 THEN product_id ELSE NULL END) AS [21],
max(CASE WHEN IdOrderPerCart = 22 THEN product_id ELSE NULL END) AS [22],
max(CASE WHEN IdOrderPerCart = 23 THEN product_id ELSE NULL END) AS [23],
max(CASE WHEN IdOrderPerCart = 24 THEN product_id ELSE NULL END) AS [24],
max(CASE WHEN IdOrderPerCart = 25 THEN product_id ELSE NULL END) AS [25],
max(CASE WHEN IdOrderPerCart = 26 THEN product_id ELSE NULL END) AS [26],
max(CASE WHEN IdOrderPerCart = 27 THEN product_id ELSE NULL END) AS [27],
max(CASE WHEN IdOrderPerCart = 28 THEN product_id ELSE NULL END) AS [28],
max(CASE WHEN IdOrderPerCart = 29 THEN product_id ELSE NULL END) AS [29],
max(CASE WHEN IdOrderPerCart = 30 THEN product_id ELSE NULL END) AS [30],
max(CASE WHEN IdOrderPerCart = 31 THEN product_id ELSE NULL END) AS [31],
max(CASE WHEN IdOrderPerCart = 32 THEN product_id ELSE NULL END) AS [32],
max(CASE WHEN IdOrderPerCart = 33 THEN product_id ELSE NULL END) AS [33],
max(CASE WHEN IdOrderPerCart = 34 THEN product_id ELSE NULL END) AS [34],
max(CASE WHEN IdOrderPerCart = 35 THEN product_id ELSE NULL END) AS [35],
max(CASE WHEN IdOrderPerCart = 36 THEN product_id ELSE NULL END) AS [36],
max(CASE WHEN IdOrderPerCart = 37 THEN product_id ELSE NULL END) AS [37],
max(CASE WHEN IdOrderPerCart = 38 THEN product_id ELSE NULL END) AS [38],
max(CASE WHEN IdOrderPerCart = 39 THEN product_id ELSE NULL END) AS [39],
max(CASE WHEN IdOrderPerCart = 40 THEN product_id ELSE NULL END) AS [40],
max(CASE WHEN IdOrderPerCart = 41 THEN product_id ELSE NULL END) AS [41],
max(CASE WHEN IdOrderPerCart = 42 THEN product_id ELSE NULL END) AS [42],
max(CASE WHEN IdOrderPerCart = 43 THEN product_id ELSE NULL END) AS [43],
max(CASE WHEN IdOrderPerCart = 44 THEN product_id ELSE NULL END) AS [44],
max(CASE WHEN IdOrderPerCart = 45 THEN product_id ELSE NULL END) AS [45],
max(CASE WHEN IdOrderPerCart = 46 THEN product_id ELSE NULL END) AS [46],
max(CASE WHEN IdOrderPerCart = 47 THEN product_id ELSE NULL END) AS [47],
max(CASE WHEN IdOrderPerCart = 48 THEN product_id ELSE NULL END) AS [48],
max(CASE WHEN IdOrderPerCart = 49 THEN product_id ELSE NULL END) AS [49],
max(CASE WHEN IdOrderPerCart = 50 THEN product_id ELSE NULL END) AS [50],
max(CASE WHEN IdOrderPerCart = 51 THEN product_id ELSE NULL END) AS [51],
max(CASE WHEN IdOrderPerCart = 52 THEN product_id ELSE NULL END) AS [52],
max(CASE WHEN IdOrderPerCart = 53 THEN product_id ELSE NULL END) AS [53],
max(CASE WHEN IdOrderPerCart = 54 THEN product_id ELSE NULL END) AS [54],
max(CASE WHEN IdOrderPerCart = 55 THEN product_id ELSE NULL END) AS [55],
max(CASE WHEN IdOrderPerCart = 56 THEN product_id ELSE NULL END) AS [56],
max(CASE WHEN IdOrderPerCart = 57 THEN product_id ELSE NULL END) AS [57],
max(CASE WHEN IdOrderPerCart = 58 THEN product_id ELSE NULL END) AS [58],
max(CASE WHEN IdOrderPerCart = 59 THEN product_id ELSE NULL END) AS [59],
max(CASE WHEN IdOrderPerCart = 60 THEN product_id ELSE NULL END) AS [60],
max(CASE WHEN IdOrderPerCart = 61 THEN product_id ELSE NULL END) AS [61],
max(CASE WHEN IdOrderPerCart = 62 THEN product_id ELSE NULL END) AS [62],
max(CASE WHEN IdOrderPerCart = 63 THEN product_id ELSE NULL END) AS [63],
max(CASE WHEN IdOrderPerCart = 64 THEN product_id ELSE NULL END) AS [64],
max(CASE WHEN IdOrderPerCart = 65 THEN product_id ELSE NULL END) AS [65],
max(CASE WHEN IdOrderPerCart = 66 THEN product_id ELSE NULL END) AS [66],
max(CASE WHEN IdOrderPerCart = 67 THEN product_id ELSE NULL END) AS [67],
max(CASE WHEN IdOrderPerCart = 68 THEN product_id ELSE NULL END) AS [68],
max(CASE WHEN IdOrderPerCart = 69 THEN product_id ELSE NULL END) AS [69],
max(CASE WHEN IdOrderPerCart = 70 THEN product_id ELSE NULL END) AS [70],
max(CASE WHEN IdOrderPerCart = 71 THEN product_id ELSE NULL END) AS [71],
max(CASE WHEN IdOrderPerCart = 72 THEN product_id ELSE NULL END) AS [72],
max(CASE WHEN IdOrderPerCart = 73 THEN product_id ELSE NULL END) AS [73],
max(CASE WHEN IdOrderPerCart = 74 THEN product_id ELSE NULL END) AS [74],
max(CASE WHEN IdOrderPerCart = 75 THEN product_id ELSE NULL END) AS [75],
max(CASE WHEN IdOrderPerCart = 76 THEN product_id ELSE NULL END) AS [76],
max(CASE WHEN IdOrderPerCart = 77 THEN product_id ELSE NULL END) AS [77],
max(CASE WHEN IdOrderPerCart = 78 THEN product_id ELSE NULL END) AS [78],
max(CASE WHEN IdOrderPerCart = 79 THEN product_id ELSE NULL END) AS [79],
max(CASE WHEN IdOrderPerCart = 80 THEN product_id ELSE NULL END) AS [80],
max(CASE WHEN IdOrderPerCart = 81 THEN product_id ELSE NULL END) AS [81],
max(CASE WHEN IdOrderPerCart = 82 THEN product_id ELSE NULL END) AS [82],
max(CASE WHEN IdOrderPerCart = 83 THEN product_id ELSE NULL END) AS [83],
max(CASE WHEN IdOrderPerCart = 84 THEN product_id ELSE NULL END) AS [84],
max(CASE WHEN IdOrderPerCart = 85 THEN product_id ELSE NULL END) AS [85],
max(CASE WHEN IdOrderPerCart = 86 THEN product_id ELSE NULL END) AS [86],
max(CASE WHEN IdOrderPerCart = 87 THEN product_id ELSE NULL END) AS [87],
max(CASE WHEN IdOrderPerCart = 88 THEN product_id ELSE NULL END) AS [88],
max(CASE WHEN IdOrderPerCart = 89 THEN product_id ELSE NULL END) AS [89],
max(CASE WHEN IdOrderPerCart = 90 THEN product_id ELSE NULL END) AS [90],
max(CASE WHEN IdOrderPerCart = 91 THEN product_id ELSE NULL END) AS [91],
max(CASE WHEN IdOrderPerCart = 92 THEN product_id ELSE NULL END) AS [92],
max(CASE WHEN IdOrderPerCart = 93 THEN product_id ELSE NULL END) AS [93],
max(CASE WHEN IdOrderPerCart = 94 THEN product_id ELSE NULL END) AS [94],
max(CASE WHEN IdOrderPerCart = 95 THEN product_id ELSE NULL END) AS [95],
max(CASE WHEN IdOrderPerCart = 96 THEN product_id ELSE NULL END) AS [96],
max(CASE WHEN IdOrderPerCart = 97 THEN product_id ELSE NULL END) AS [97],
max(CASE WHEN IdOrderPerCart = 98 THEN product_id ELSE NULL END) AS [98],
max(CASE WHEN IdOrderPerCart = 99 THEN product_id ELSE NULL END) AS [99],
max(CASE WHEN IdOrderPerCart = 100 THEN product_id ELSE NULL END) AS [100],
max(CASE WHEN IdOrderPerCart = 101 THEN product_id ELSE NULL END) AS [101],
max(CASE WHEN IdOrderPerCart = 102 THEN product_id ELSE NULL END) AS [102],
max(CASE WHEN IdOrderPerCart = 103 THEN product_id ELSE NULL END) AS [103],
max(CASE WHEN IdOrderPerCart = 104 THEN product_id ELSE NULL END) AS [104],
max(CASE WHEN IdOrderPerCart = 105 THEN product_id ELSE NULL END) AS [105],
max(CASE WHEN IdOrderPerCart = 106 THEN product_id ELSE NULL END) AS [106],
max(CASE WHEN IdOrderPerCart = 107 THEN product_id ELSE NULL END) AS [107],
max(CASE WHEN IdOrderPerCart = 108 THEN product_id ELSE NULL END) AS [108],
max(CASE WHEN IdOrderPerCart = 109 THEN product_id ELSE NULL END) AS [109],
max(CASE WHEN IdOrderPerCart = 110 THEN product_id ELSE NULL END) AS [110],
max(CASE WHEN IdOrderPerCart = 111 THEN product_id ELSE NULL END) AS [111],
max(CASE WHEN IdOrderPerCart = 112 THEN product_id ELSE NULL END) AS [112],
max(CASE WHEN IdOrderPerCart = 113 THEN product_id ELSE NULL END) AS [113],
max(CASE WHEN IdOrderPerCart = 114 THEN product_id ELSE NULL END) AS [114],
max(CASE WHEN IdOrderPerCart = 115 THEN product_id ELSE NULL END) AS [115],
max(CASE WHEN IdOrderPerCart = 116 THEN product_id ELSE NULL END) AS [116],
max(CASE WHEN IdOrderPerCart = 117 THEN product_id ELSE NULL END) AS [117],
max(CASE WHEN IdOrderPerCart = 118 THEN product_id ELSE NULL END) AS [118],
max(CASE WHEN IdOrderPerCart = 119 THEN product_id ELSE NULL END) AS [119],
max(CASE WHEN IdOrderPerCart = 120 THEN product_id ELSE NULL END) AS [120],
max(CASE WHEN IdOrderPerCart = 121 THEN product_id ELSE NULL END) AS [121],
max(CASE WHEN IdOrderPerCart = 122 THEN product_id ELSE NULL END) AS [122],
max(CASE WHEN IdOrderPerCart = 123 THEN product_id ELSE NULL END) AS [123],
max(CASE WHEN IdOrderPerCart = 124 THEN product_id ELSE NULL END) AS [124],
max(CASE WHEN IdOrderPerCart = 125 THEN product_id ELSE NULL END) AS [125],
max(CASE WHEN IdOrderPerCart = 126 THEN product_id ELSE NULL END) AS [126],
max(CASE WHEN IdOrderPerCart = 127 THEN product_id ELSE NULL END) AS [127],
max(CASE WHEN IdOrderPerCart = 128 THEN product_id ELSE NULL END) AS [128],
max(CASE WHEN IdOrderPerCart = 129 THEN product_id ELSE NULL END) AS [129],
max(CASE WHEN IdOrderPerCart = 130 THEN product_id ELSE NULL END) AS [130],
max(CASE WHEN IdOrderPerCart = 131 THEN product_id ELSE NULL END) AS [131],
max(CASE WHEN IdOrderPerCart = 132 THEN product_id ELSE NULL END) AS [132],
max(CASE WHEN IdOrderPerCart = 133 THEN product_id ELSE NULL END) AS [133],
max(CASE WHEN IdOrderPerCart = 134 THEN product_id ELSE NULL END) AS [134],
max(CASE WHEN IdOrderPerCart = 135 THEN product_id ELSE NULL END) AS [135],
max(CASE WHEN IdOrderPerCart = 136 THEN product_id ELSE NULL END) AS [136],
max(CASE WHEN IdOrderPerCart = 137 THEN product_id ELSE NULL END) AS [137],
max(CASE WHEN IdOrderPerCart = 138 THEN product_id ELSE NULL END) AS [138],
max(CASE WHEN IdOrderPerCart = 139 THEN product_id ELSE NULL END) AS [139],
max(CASE WHEN IdOrderPerCart = 140 THEN product_id ELSE NULL END) AS [140],
max(CASE WHEN IdOrderPerCart = 141 THEN product_id ELSE NULL END) AS [141],
max(CASE WHEN IdOrderPerCart = 142 THEN product_id ELSE NULL END) AS [142],
max(CASE WHEN IdOrderPerCart = 143 THEN product_id ELSE NULL END) AS [143],
max(CASE WHEN IdOrderPerCart = 144 THEN product_id ELSE NULL END) AS [144],
max(CASE WHEN IdOrderPerCart = 145 THEN product_id ELSE NULL END) AS [145],
max(CASE WHEN IdOrderPerCart = 146 THEN product_id ELSE NULL END) AS [146]
into Carts_prior
	   from (
SELECT order_id , product_id, --add_to_cart_order
        ROW_NUMBER() OVER(PARTITION BY order_id ORDER BY product_id ASC) AS IdOrderPerCart 
      --, COUNT(1) AS players
  FROM order_products__prior f
 --GROUP BY order_id , product_id,add_to_cart_order
 ) as gg
group by order_id


select top 100 *
from [dbo].[Carts_prior]