# 15.2_Cloudeprovider_Aleksandr_Molokov

## Задание 1. Yandex Cloud 

**Что нужно сделать**

1. Создать бакет Object Storage и разместить в нём файл с картинкой:

 - Создать бакет в Object Storage с произвольным именем (например, _имя_студента_дата_).
 - Положить в бакет файл с картинкой.
 - Сделать файл доступным из интернета.
 
2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:

 - Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать `image_id = fd827b91d99psvq5fjit`.
 - Для создания стартовой веб-страницы рекомендуется использовать раздел `user_data` в [meta_data](https://cloud.yandex.ru/docs/compute/concepts/vm-metadata).
 - Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
 - Настроить проверку состояния ВМ.
 
3. Подключить группу к сетевому балансировщику:

 - Создать сетевой балансировщик.
 - Проверить работоспособность, удалив одну или несколько ВМ.
4. (дополнительно)* Создать Application Load Balancer с использованием Instance group и проверкой состояния.

### Ответ

#### ![Terraform files](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/tree/788fa7d0d6821a5d1f8e7018e4b83fa9e98e1fcc/15.2_terraform)

#### Ресурсы в YandexCloud

![YC ресурсы общие](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/2a7181cf-02e4-494e-ba6a-787d64df1855)

![Группа ВМ](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/2d982c25-aaf9-4106-9bdf-8915d7e48aeb)

![ВМ](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/35727ca7-7787-4c53-999c-4906a71ee94c)

![Бакет-сторадж](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/ba429419-c584-4eab-a7c9-cfecedaa5a8e)

![Сетевой балансировщик](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/74bee522-ec79-42d9-b243-8830489a8c77)

![Сеть](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/45a73b16-4adc-41f7-b1d7-153afe4db9e2)

#### Доступ

![Доступ](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/453308e7-0ab6-4c34-afb3-d6707dc58dee)

#### Удалил 2 ВМ из группы
![удалил 2 вм все по прежнему доступно](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/691964aa-4a6c-421f-837d-147d4118feef)

#### Доступ через ВМ NAT instance после удаления 2 ВМ из группы

![доступ через нат ПК](https://github.com/ALEMOLOKOV/15.2_Cloudprovider_Aleksandr_Molokov/assets/109212419/ed463a84-cd5d-43f9-a528-5db2f282b4e1)




   
