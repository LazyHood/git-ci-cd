# API Documentation

## Calculator Class

Класс для выполнения базовых математических операций.

### Methods

#### `add(a, b)`

Складывает два числа.

**Параметры:**
- `a` (Numeric) - первое число
- `b` (Numeric) - второе число

**Возвращает:**
- (Numeric) сумма a и b

**Пример:**
```ruby
calc = Calculator.new
calc.add(5, 3)  # => 8
calc.add(-2, 7) # => 5
```

---

#### `subtract(a, b)`

Вычитает второе число из первого.

**Параметры:**
- `a` (Numeric) - уменьшаемое
- `b` (Numeric) - вычитаемое

**Возвращает:**
- (Numeric) разность a и b

**Пример:**
```ruby
calc = Calculator.new
calc.subtract(10, 4) # => 6
calc.subtract(3, 8)  # => -5
```

---

#### `multiply(a, b)`

Умножает два числа.

**Параметры:**
- `a` (Numeric) - первый множитель
- `b` (Numeric) - второй множитель

**Возвращает:**
- (Numeric) произведение a и b

**Пример:**
```ruby
calc = Calculator.new
calc.multiply(3, 7)  # => 21
calc.multiply(-2, 4) # => -8
```

---

#### `divide(a, b)`

Делит первое число на второе.

**Параметры:**
- `a` (Numeric) - делимое
- `b` (Numeric) - делитель (не может быть 0)

**Возвращает:**
- (Numeric) частное от деления a на b

**Исключения:**
- `ArgumentError` - если b равно 0

**Пример:**
```ruby
calc = Calculator.new
calc.divide(15, 3) # => 5
calc.divide(10, 0) # => ArgumentError: Division by zero
```

---

## Обработка ошибок

### Division by Zero

При попытке деления на ноль генерируется исключение `ArgumentError` с сообщением "Division by zero".

**Пример обработки:**
```ruby
calc = Calculator.new

begin
  result = calc.divide(10, 0)
rescue ArgumentError => e
  puts "Ошибка: #{e.message}"
end
```

---

## Тестирование

Все методы покрыты тестами. Запуск тестов:

```bash
bundle exec rspec
```

**Coverage:** 100%

---

**Версия API:** 1.0.0  
**Последнее обновление:** 2025-10-24
