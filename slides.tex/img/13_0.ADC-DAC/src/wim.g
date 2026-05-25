digraph G {
    " Значение" [shape="rectangle", color="blue"];
    " Аналоговый сигнал" [shape="rectangle", color="red"];
    " Тактовые импульсы" [shape="rectangle"];

    " [>=] ?" [shape="ellipse"];
    " Счётчик [++]" [shape="ellipse"];

    " Схема сглаживания\n(может не быть)" [shape="ellipse", color="red"];
    " Аналоговый ключ" [shape="ellipse", color="red"];

    " Тактовые импульсы" -> " Счётчик [++]";
    " Счётчик [++]" -> " [>=] ?" [color="blue", label="Ц"];
    " Значение" -> " [>=] ?" [color="blue", label="Ц"];
    " [>=] ?" -> " Аналоговый ключ" [color="blue", label="Ц"];
    " Аналоговый ключ" -> " Схема сглаживания\n(может не быть)" -> " Аналоговый сигнал" [color="red", label="А"];
}
