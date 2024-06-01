select
    PRODUCTID
    ,PRODUCTNAME
    ,CATEGORY
    ,SUBCATEGORY
    ,SUM(ORDER_PROFIT) as Total_profit
FROM
{{ ref('stg_orders') }}

GROUP BY
    PRODUCTID
    ,PRODUCTNAME
    ,CATEGORY
    ,SUBCATEGORY