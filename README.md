# Calculator Project

Простой калькулятор на Ruby с автоматическим тестированием и CI/CD.

## 📋 Описание

Проект демонстрирует настройку CI/CD pipeline с использованием GitHub Actions для автоматического тестирования и развертывания Ruby приложения.

## 🚀 Возможности

- Базовые математические операции (сложение, вычитание, умножение, деление)
- Автоматическое тестирование с RSpec
- CI/CD pipeline через GitHub Actions
- Автоматический merge из development в main
- Автоматическая генерация документации

## 📦 Установка

```bash
# Клонирование репозитория
git clone https://github.com/LazyHood/git-ci-cd.git
cd git-ci-cd

# Установка зависимостей
bundle install
```

## 🧪 Запуск тестов

```bash
# Все тесты
bundle exec rspec

# С подробным выводом
bundle exec rspec --format documentation
```

## 📖 Использование

```ruby
require_relative 'calculator'

calc = Calculator.new

calc.add(5, 3)       # => 8
calc.subtract(10, 4) # => 6
calc.multiply(3, 7)  # => 21
calc.divide(15, 3)   # => 5
```

## 🔄 CI/CD Workflow

### Ветки

- `main` - основная ветка (production)
- `development` - ветка для разработки
- `release` - ветка для релизов

### Процесс разработки

1. Создайте feature branch из `development`
2. Внесите изменения и закоммитьте
3. Создайте Pull Request в `development`
4. После прохождения тестов - merge в `development`
5. При push в `development` - автоматический merge в `main`

### GitHub Actions

При каждом push/PR автоматически:
- Запускаются тесты
- Генерируется документация
- При успехе в development - мержится в main

## 📁 Структура проекта

```
git-ci-cd/
├── .github/
│   └── workflows/
│       └── main.yml          # CI/CD конфигурация
├── spec/
│   ├── calculator_spec.rb    # Тесты
│   └── spec_helper.rb        # Настройки RSpec
├── docs/
│   └── API.md                # API документация
├── calculator.rb             # Основной класс
├── Gemfile                   # Зависимости
├── Gemfile.lock              # Locked версии
└── README.md                 # Этот файл
```

## 🛠 Технологии

- Ruby 3.1
- RSpec 3.13
- GitHub Actions
- Bundler

## 📝 Документация

Полная документация доступна в папке `docs/`:
- [API Documentation](docs/API.md)

## 🤝 Участие в разработке

1. Fork репозиторий
2. Создайте feature branch (`git checkout -b feature/amazing-feature`)
3. Commit изменения (`git commit -m 'Add amazing feature'`)
4. Push в branch (`git push origin feature/amazing-feature`)
5. Откройте Pull Request

## 📄 Лиценза

MIT License

## 👤 Автор

LazyHood - [GitHub](https://github.com/LazyHood)

## 🔗 Ссылки

- [Репозиторий](https://github.com/LazyHood/git-ci-cd)
- [Issues](https://github.com/LazyHood/git-ci-cd/issues)

---

**Версия:** 1.0.0  
**Последнее обновление:** 2025-10-24
