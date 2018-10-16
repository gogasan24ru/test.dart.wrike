=== Test dart application ===
Задание:<br>
* Написать алгоритм выдачи денег банкоматом и покрыть его юнит-тестами.<br>
* Номиналы купюр задаются в параметрах алгоритма, например: 1, 5, 10, 50.<br>
*Банкомат обладает неограниченным запасом денег.<br>
* Банкомат выдает запрашиваемую сумму минимальным количеством купюр, но количество 
номиналов купюр должно быть максимальным.<br>
* При запросе суммы в 20, банкомат выдаст пять купюр по 1, одну купюру по 5, и одну купюру 10.<br>


=== Runing application ===
path/to/dart main.dart min max step
where: 
* min - minimal value to calculate
* max - max value to calculate
* step - calculate each value between min and max by step

=== Runing tests ===
path/to/dart tests.dart
