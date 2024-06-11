1. -- Вывести товары, добавив поле цена со наценкой Price_up в случае, если:
-- цена от 200 EUR — наценка 0.5%
-- цена от 20 EUR — наценка 1.5%

SELECT *,
  CASE
    WHEN Price >=20 THEN Price * 1.015
    WHEN Price >= 200 THEN Price * 1.005
      Else Price
  END AS Price_up
FROM Products

-- Дополнительно (повторение материала) напишите след/запросы при работе в MySQL Workbench:
-- Создать новую базу данных webstore
-- Создать таблицу products (поля - на ваше усмотрение)
create table products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)
