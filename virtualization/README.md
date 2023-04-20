
## Задача 1

Опишите кратко, в чём основное отличие полной (аппаратной) виртуализации, паравиртуализации и виртуализации на основе ОС.

    Основное отличие заключается в том , как виртуальнрые машины общаются с аппаратным обеспечением и какие уровни абстракции предоставляются


## Задача 2

Выберите один из вариантов использования организации физических серверов в зависимости от условий использования.

Организация серверов:

- физические сервера,
- паравиртуализация,
- виртуализация уровня ОС.

Условия использования:

- высоконагруженная база данных, чувствительная к отказу;
- различные web-приложения;
- Windows-системы для использования бухгалтерским отделом;
- системы, выполняющие высокопроизводительные расчёты на GPU.

Опишите, почему вы выбрали к каждому целевому использованию такую организацию.

    Высоконагруженная база данных, чувствительная к отказу: для таких условий использования наилучшим вариантом будет организация физических серверов. Это обеспечит       максимальную производительность и устойчивость к отказам, так как ресурсы сервера будут выделены только для этой базы данных. \

    Различные web-приложения: для этой цели можно использовать виртуализацию уровня ОС, так как она позволяет запускать несколько изолированных экземпляров приложений     на одном физическом сервере, что повышает эффективность использования ресурсов и упрощает управление приложениями. \

    Windows-системы для использования бухгалтерским отделом: в этом случае рекомендуется использовать паравиртуализацию. Она обеспечивает изоляцию операционных систем,     что позволяет бухгалтерскому отделу работать со своей собственной системой и при этом не влиять на работу других систем. \

    Системы, выполняющие высокопроизводительные расчёты на GPU: для этой цели наиболее подходящим вариантом будет использование физических серверов с             высокопроизводительными GPU, так как это обеспечит максимальную производительность при выполнении расчётов. \

## Задача 3

Выберите подходящую систему управления виртуализацией для предложенного сценария. Детально опишите ваш выбор.

Сценарии:

1. 100 виртуальных машин на базе Linux и Windows, общие задачи, нет особых требований. Преимущественно Windows based-инфраструктура, требуется реализация программных балансировщиков нагрузки, репликации данных и автоматизированного механизма создания резервных копий.
2. Требуется наиболее производительное бесплатное open source-решение для виртуализации небольшой (20-30 серверов) инфраструктуры на базе Linux и Windows виртуальных машин.
3. Необходимо бесплатное, максимально совместимое и производительное решение для виртуализации Windows-инфраструктуры.
4. Необходимо рабочее окружение для тестирования программного продукта на нескольких дистрибутивах Linux.

    1 -VMware т.к. это мощное и надежное решение которое работает с linux и windows  машинами. Имеет функции балансировки, реплиткации и автоматизации. \
    2 -KVM т.к. яваляется бесплатной . Работает с Linux и Windows машинами. Обладает высокой производительностью и хорошо подходит в небольших инфраструктурах \
    3-Hyper-v т.к. является беплатным решением от Microsoft которое подходит для работы с Windows машинами \
    4- Думаю подойдет VirtualBox тк является бесплатныи решением и хорошо подойдет для тестирования в небольших колличествах \

## Задача 4

Опишите возможные проблемы и недостатки гетерогенной среды виртуализации (использования нескольких систем управления виртуализацией одновременно) и что необходимо сделать для минимизации этих рисков и проблем. Если бы у вас был выбор, создавали бы вы гетерогенную среду или нет? Мотивируйте ваш ответ примерами.

    Во первых это сложность управления и неудобство . Необходимо каждый раз переключать среды \
    Во вторых безопастность. Необходимо рассматривать картину под несколькими углами для каждой из систем виртуализации. \
    Ну и скорее всего работоспособность. Если имеется несколько виртуализаций то это означает, что под каждую системы были выделены ресурсы. Если несколько виртуализаций никак не интегрированны между собой то в итоге мы получаем избыточноть или недостаток ресурсов на одном или нескольких виртуализаций. \
    Для минимилизации вышеуказанных пунктов необходимо :1 - Создать единую систему управления. 2 - Позаботиться о безопастности. \
    Если бы у меня был выбор , создавал бы я гетерогенную систему - нет. Лучше использовать одну систему которая поддерживает все необходимые функции. Ей легче управлять , меньше рисков и больше производительности. \
    