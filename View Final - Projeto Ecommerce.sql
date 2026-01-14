CREATE OR REPLACE VIEW analise_pedido AS 
SELECT
    o.order_id,
    o.customer_id, 
    i.seller_id, 
    STR_TO_DATE(o.order_purchase_timestamp, '%Y-%m-%d %H:%i:%s') AS data_pedido, -- Ajustei a construção da coluna para Data de Pedido
    (CAST(i.price AS DECIMAL(10,2)) + CAST(i.freight_value AS DECIMAL(10,2))) AS valor_total_item, -- Aqui juntei o valor do Preço de venda e do Frente para poder calcular o Faturamento Bruto
    CASE 
        WHEN p.product_category_name IS NULL OR p.product_category_name = '' 
        THEN 'Outros' 
        ELSE p.product_category_name 
    END AS categoria, -- Aqui resolvi o problema de algumas categorias de produtos que vieram em branco
    DATEDIFF(
        STR_TO_DATE(o.order_delivered_customer_date, '%Y-%m-%d %H:%i:%s'), 
        STR_TO_DATE(o.order_estimated_delivery_date, '%Y-%m-%d %H:%i:%s')
    ) AS dias_de_atraso -- Aqui fiz a diferença entre data de entrega e data estimada de entrega para calcular a performance logística
    
FROM olist_order_items_dataset AS i
INNER JOIN olist_orders_dataset AS o ON i.order_id = o.order_id 
INNER JOIN olist_products_dataset AS p ON i.product_id = p.product_id
WHERE o.order_status = 'delivered'

AND o.order_delivered_customer_date IS NOT NULL;
