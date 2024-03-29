# Домашнее задание к занятию 11 «Teamcity»

## Подготовка к выполнению

1. В Yandex Cloud создайте новый инстанс (4CPU4RAM) на основе образа `jetbrains/teamcity-server`.
2. Дождитесь запуска teamcity, выполните первоначальную настройку.
3. Создайте ещё один инстанс (2CPU4RAM) на основе образа `jetbrains/teamcity-agent`. Пропишите к нему переменную окружения `SERVER_URL: "http://<teamcity_url>:8111"`.
4. Авторизуйте агент.
5. Сделайте fork [репозитория](https://github.com/aragastmatb/example-teamcity).
6. Создайте VM (2CPU4RAM) и запустите [playbook](./infrastructure).

## Основная часть

1. Создайте новый проект в teamcity на основе fork.
``https://github.com/djohnii/example-teamcity``
2. Сделайте autodetect конфигурации.
3. Сохраните необходимые шаги, запустите первую сборку master.
4. Поменяйте условия сборки: если сборка по ветке `master`, то должен происходит `mvn clean deploy`, иначе `mvn clean test`.
5. Для deploy будет необходимо загрузить [settings.xml](./teamcity/settings.xml) в набор конфигураций maven у teamcity, предварительно записав туда креды для подключения к nexus.
6. В pom.xml необходимо поменять ссылки на репозиторий и nexus.
7. Запустите сборку по master, убедитесь, что всё прошло успешно и артефакт появился в nexus.
8. 
![image](https://github.com/djohnii/devops-netology/assets/91311426/bc04dda0-045c-4077-98f4-e131e34580f8)

![image](https://github.com/djohnii/devops-netology/assets/91311426/17fb6bf3-1c30-4e22-ae1e-c3f2173c346e)

9. Мигрируйте `build configuration` в репозиторий.

``https://github.com/djohnii/devops-netology/blob/main/mnt-homeworks-MNT-video/09-ci-05-teamcity/build``

10. Создайте отдельную ветку `feature/add_reply` в репозитории.

``https://github.com/djohnii/example-teamcity/tree/feature/add_reply``

11. Напишите новый метод для класса Welcomer: метод должен возвращать произвольную реплику, содержащую слово `hunter`.

```
	public String sayHunter(){
		return "You're a good little hunter";
	}
```


```
	@Test
	public void welcomerSaysHunter() {
		assertThat(welcomer.sayWelcome(), containsString("hunter"));
		assertThat(welcomer.sayFarewell(), containsString("hunter"));
		assertThat(welcomer.sayHunter(), containsString("hunter"));
	}
```

12. Дополните тест для нового метода на поиск слова `hunter` в новой реплике.
13. Сделайте push всех изменений в новую ветку репозитория.
14. Убедитесь, что сборка самостоятельно запустилась, тесты прошли успешно.
![image](https://github.com/djohnii/devops-netology/assets/91311426/69bf01ec-fe6e-43bd-8cfe-91af3240d4d5)

15. Внесите изменения из произвольной ветки `feature/add_reply` в `master` через `Merge`.
16. Убедитесь, что нет собранного артефакта в сборке по ветке `master`.
17. Настройте конфигурацию так, чтобы она собирала `.jar` в артефакты сборки.

![image](https://github.com/djohnii/devops-netology/assets/91311426/5eccb6d7-ad5b-4e8a-8bb6-3be1369feeab)

18. Проведите повторную сборку мастера, убедитесь, что сбора прошла успешно и артефакты собраны.
![image](https://github.com/djohnii/devops-netology/assets/91311426/4b11fe58-d321-43bd-a961-5b27d3f35b7b)

![image](https://github.com/djohnii/devops-netology/assets/91311426/9dcbf912-e620-4ef8-8b3d-937dce382b83)

![image](https://github.com/djohnii/devops-netology/assets/91311426/792083e7-eaf8-45f4-867d-f84ac4412c72)


19. Проверьте, что конфигурация в репозитории содержит все настройки конфигурации из teamcity.
20. В ответе пришлите ссылку на репозиторий.

https://github.com/djohnii/example-teamcity/tree/master

---

### Как оформить решение задания

Выполненное домашнее задание пришлите в виде ссылки на .md-файл в вашем репозитории.

---
