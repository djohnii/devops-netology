
## Задача 1



- В чём отличие режимов работы сервисов в Docker Swarm-кластере: replication и global?
```
docker swarm replication запускает одну копию контейнера на каждом узле.
docker swarm global - запускает заданное количество контейнеров на всем кластере.
```

- Какой алгоритм выбора лидера используется в Docker Swarm-кластере?
```
используется режим выбора лидера raft . лидером становится тот узел, который получил большинство голосов от остальных узлов кластер
```
- Что такое Overlay Network?
```
это виртуальная сеть, которая позволяет подключать контейнеры, работающие на разных хостах, к одной сети. Это позволяет контейнерам общаться друг с другом без необходимости настройки дополнительных сетевых интерфейсов или переадресации портов на хостовой машине. Кроме того, Overlay Network обеспечивает автоматическое шифрование трафика между контейнерами в сети, что делает ее более безопасной.
```

## Задача 2

Создайте ваш первый Docker Swarm-кластер в Яндекс Облаке.

Чтобы получить зачёт, предоставьте скриншот из терминала (консоли) с выводом команды:
```
docker node ls
```
![image](https://github.com/djohnii/devops-netology/assets/91311426/3d8dd223-825d-4bfa-8960-05819d12b14e)


## Задача 3

Создайте ваш первый, готовый к боевой эксплуатации кластер мониторинга, состоящий из стека микросервисов.

Чтобы получить зачёт, предоставьте скриншот из терминала (консоли), с выводом команды:
```
docker service ls
```
![image](https://github.com/djohnii/devops-netology/assets/91311426/51d3c6ee-e5fc-4e0c-b0fd-6ccdae8e053c)

## Задача 4 (*)

Выполните на лидере Docker Swarm-кластера команду, указанную ниже, и дайте письменное описание её функционала — что она делает и зачем нужна:
```
# см.документацию: https://docs.docker.com/engine/swarm/swarm_manager_locking/
docker swarm update --autolock=true
```
## Ответ 4
```
Команда docker swarm update используется для обновления конфигурации Swarm-кластера. Параметр --autolock=true указывает на автоматическую блокировку конфигурации после ее обновления.

При использовании этого параметра, после успешного обновления конфигурации кластера, Swarm-механизм автоматически блокирует конфигурацию, чтобы предотвратить нежелательное изменение ее состояния. Блокировка не позволяет вносить изменения в конфигурацию до тех пор, пока она не будет разблокирована явно. Это повышает безопасность кластера, и позволяет избежать случайных изменений конфигурации.

```
