# ducktor

Веб-поиск из терминала. CLI обращается к сервису ducktor, который отдаёт выдачу DuckDuckGo, полученную через tor.

## Установка

```bash
brew install a-kuz/ducktor/ducktor
```

Нужны `curl` и `jq` (jq Homebrew ставит сам).

## Использование

```bash
ducktor "caddy reverse proxy"          # 10 результатов
ducktor -n 30 -g ru "аренда сервера"   # 30 результатов, выдача для России
ducktor --json "tokio semaphore" | jq '.organic[].link'
```

При первом запуске `ducktor` спрашивает ключ доступа и сохраняет его в `~/.config/ducktor/key`. `ducktor login` заменяет ключ, `ducktor logout` удаляет.

| Переменная | Что задаёт |
|---|---|
| `DUCKTOR_KEY` | ключ; приоритетнее файла, нужен там, где нет терминала |
| `DUCKTOR_URL` | адрес сервиса, по умолчанию `https://ducktor.a-kuz.online` |
| `NO_COLOR` | отключает цвет |

## Выпуск версии

1. Поднять `VERSION` в скрипте `ducktor`, закоммитить, поставить тег `vX.Y.Z`, запушить.
2. Посчитать сумму архива: `curl -sL https://github.com/a-kuz/homebrew-ducktor/archive/refs/tags/vX.Y.Z.tar.gz | shasum -a 256`.
3. Вписать `url` и `sha256` в `Formula/ducktor.rb`, закоммитить, запушить.
