№ 1. <br>
Спроектировать структуру таблиц(ы) для хранения Контактов, которые могут иметь друзей из этого же списка Контактов (в рамках задачи достаточно хранить только Имя Контакта).<br>Если Контакт 2 является другом Контакта 1, это не означает, что Контакт 1 является другом Контакта 2.

№ 1.1.<br>
Написать запрос sql, отображающий список Контактов, имеющих больше 5 друзей.<br>
№ 1.2.<br>Написать запрос sql, отображающий все пары Контактов, которые дружат друг с другом. Исключить дубликаты.
(задача на sql запросы, использование PHP запрещено)


№ 2.<br>Имеется массив числовых значений [4, 5, 8, 9, 1, 7, 2]. В распоряжении есть функция array_swap(&$arr, $num) { … } которая меняем местами элемент на позиции $num и элемент на 0 позиции.  Т.е. при выполнении array_swap([3, 6, 2], 2) на выходе получим [2, 6, 3].<br>Написать код, сортирующий массив по возрастанию, используя только функцию array_swap.