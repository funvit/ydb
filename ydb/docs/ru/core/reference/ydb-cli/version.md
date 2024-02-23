# Вывод версии {{ ydb-short-name }} CLI

С помощью подкоманды `version` вы можете узнать версию установленного {{ ydb-short-name }} CLI, а также управлять автоматической проверкой доступности новой версии.

Автоматическая проверка доступности новой версии происходит при выполнении любой команды {{ ydb-short-name }} CLI кроме `ydb version --enable-checks` и `ydb version --disable-checks`, но не чаще одного раза в сутки. Результат и время последней проверки сохраняются в конфигурационном файле {{ ydb-short-name }} CLI.

Общий вид команды:

```bash
{{ ydb-cli }} [global options...] version [options...]
```

* `global options` — [глобальные параметры](commands/global-options.md).
* `options` — [параметры подкоманды](#options).

Посмотрите описание команды:

```bash
{{ ydb-cli }} version --help
```

## Параметры подкоманды {#options}

Параметр | Описание
---|---
`--semantic` | Вывести только номер версии.
`--check` | Проверить доступность новой версии.
`--disable-checks` | Отключить проверку доступности новой версии.
`--enable-checks` | Включить проверку доступности новой версии.

## Примеры {#examples}

### Отключить проверку доступности новой версии {#disable-checks}

При выполнении команд {{ ydb-short-name }} CLI происходит автоматическая проверка доступности новой версии. Если хост, на котором выполняется команда, не имеет доступа в интернет, это приводит к нежелательной задержке и выводу предупреждения при выполнении команды. Чтобы отключить автоматическую проверку обновления, выполните команду:

```bash
{{ ydb-cli }} version --disable-checks
```

Результат:

```text
Latest version checks disabled
```

### Вывести только номер версии {#semantic}

Для более удобной обработки в скриптах вы можете ограничить вывод номером версии {{ ydb-short-name }} CLI:

```bash
{{ ydb-cli }} version --semantic
```

Результат:

```text
1.9.1
```