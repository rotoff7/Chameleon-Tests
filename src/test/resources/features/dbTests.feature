# language: ru

# Тестовые данные:
  # $FOOD_NAME Нвйфрукт1тест
  # $FOOD_TYPE FRUIT
  # $FOOD_EXOTIC 1

Функция: Добавление товаров в БД

  Сценарий: Добавление товара в БД
    * к БД выполнено подключение "H2" с параметрами:
      | field    | value |
      | User     | user  |
      | Password | pass  |
    * к БД выполняется запрос "Добавление товара" c параметрами:
      | field  | value          |
      | name   | #{FOOD_NAME}   |
      | type   | #{FOOD_TYPE}   |
      | exotic | #{FOOD_EXOTIC} |
    * к БД выполняется запрос "Получение товара" c параметрами:
      | field  | value          |
      | name   | #{FOOD_NAME}   |
      | type   | #{FOOD_TYPE}   |
    * к БД выполняется запрос "Удаление товара" c параметрами:
      | field | value        |
      | name  | #{FOOD_NAME} |
    * закрыто подключение к БД





