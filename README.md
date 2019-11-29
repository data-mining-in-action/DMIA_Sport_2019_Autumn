# DMIA, Спортивное направление. Осень 2019

Содержимое:
- [Course requirements](#course-requirements)
- [Conda](#conda)
- [Virtualenv](#virtualenv)
- [Использование Jupyter Notebook](#использование-jupyter-notebook)
- [План занятий](#план-занятий)

## Course requirements

Здесь мы с вами установим Python с нужными библиотеками. Вам нужно выбрать вариант, которым вы хотите воспользоваться - использовать Conda или virtualenv.

## Conda
Если у вас Linux, вы можете воспользоваться [этим скриптом](https://github.com/data-mining-in-action/DMIA_Sport_2019_Autumn/blob/master/CondaInstallationForLinux.sh). Его нужно скопировать в консоль и выполнить, или скачать (например, wget) и выполнить `chmod +x script.py && bash script.py`.

Если у вас mac или windows, [загрузите Anaconda](https://www.anaconda.com/distribution/), а затем в Terminal (Mac OS) или Anaconda Prompt (Windows) выполните строчки из скрипта выше, начиная с `# create new environment and basic list of packages in it`. Поступите аналогично, если у вас уже установлена conda.

После установки активируйте окружение и установите дополнительные зависимости, лежащие в корне репозитория:
`conda activate py36 && pip install -r <path_to_requirements.txt>`.

## Virtualenv
Если вы не хотите использовать conda, можно воспользоваться virtualenv. Если вы воспользовались conda, вы можете изучить этот раздел как более подробное описание того, какую задачу выполняет используемый выше скрипт.

1. Нужно установить утилиту virtualenv. [Сайт с документацией и описанием, что это такое и как установить](https://virtualenv.pypa.io/en/stable/userguide/) . Работая с virtualenv, вы сможете гарантированно запускать скрипты с теми же версиями библиотек, что и на лекциях и семинарах.
2. Создайте окружение для python3.6 командой `virtualenv -p python3.6 <path_to_dir_where_env_will_be_stored>`
3. Активируйте его командой `source <path_to_the_dir/bin/activate>`, для выхода используйте команду `deactivate`
4. Теперь у вас есть отдельная версия Питона, с которой можно делать что угодно, не боясь, что это затронет другие ваши проекты.
5. Установите необходимые пакеты командой `pip install -r <path_to_rep_requirements.txt>`. Этот файл будет находится в репозитории курса, в нём будут перечислены все необхожимые библиотеки с указанными версиями. Выполнив команду, вы получите такую же конфигурацию библиотек, которая используется на семинарах и лекциях.
6. Добавьте в Jupyter Notebook созданное ранее виртуальное окружение как новый Kernel. Как это сделать наглядно описано [здесь](https://anbasile.github.io/programming/2017/06/25/jupyter-venv/). Теперь вы сможете запускать ноутбуки в этом окружении. При запуске ноутбука справа сверху должно быть указано python 3.6, если же этого не произошло, вы можете переключиться на нужное ядро через Kernel > Change kernel прямо в отрытом ноутбуке с кодом.

## Использование Jupyter Notebook

Большую часть кода мы будем писать и изучать в jupyter notebook (нужные пакеты указаны в файле requirements.txt). Нужно поднять сервер Jupyter Notebook. Для это это выполните команду `jupyter notebook --port 8000 --port-retries=0 --ip='*' --no-browser`. Теперь вы можете зайти в браузере на страницу `http://localhost:8000/tree` и увидеть проводник. Корневой папкой будет та, находясь в которой, вы выполнили команду запуска.

## План занятий

### 2019-10-07 Обзорная лекция про соревнования

[Презентация](https://hackmd.io/@aguschin/BJODbTruB)

### 2019-10-12 Визуализации и EDA

- Лекционная часть 
	- [Расписание семестра](https://hackmd.io/@aguschin/r1A-dDJKH)
	- [Визуализации](https://hackmd.io/@aguschin/SyQZoNsuH)
	- [EDA](https://hackmd.io/@aguschin/r1Z3nfidr)
- Семинарская часть
	- [EDA](seminars/EDA)
- Обсуждение
	- решения победителей competitions/passwords

### 2019-10-19 Метрики, валидация, бейзлайн

- Лекционная часть
	- [Метрики](lectures/Metrics.pdf)
	- [Валидация](lectures/Validation.pdf)
- Семинарская часть
	- [Пример фреймворка для решения соревнования](seminars/baseline)
- Обсуждение
	- Идеи для второго соревнования

### 2019-10-26 Генерация признаков, DL в соревнованиях

- Лекционная часть
	- [Генерация признаков (табличные данные)](https://hackmd.io/@0lgaF/SkYHPDy5r)
	- [Извлечение признаков из текстов и картинок](lectures/FeatureExtractionFromTextsAndImages.pdf)
- Обсуждение
	- Решения победителей второго соревнования

### 2019-11-16
- Лекционная часть
	- [Тюнинг моделей](lectures/ModelTuning.pdf)
	- [Аренда серверов](lectures/ServerRent.pdf)
- Обсуждение
	- Идеи для текущего соревнования
	
### 2019-11-23
- Лекционная часть
	- [Кодирование средним](lectures/MeanEncoding.pdf)
	- [Сложные признаки](lectures/AdvancedFeatures.pdf)
- Семинарская часть
	- [Кодирование средним](seminars/mean_encoding)
	- [Ускорение вычислений](seminars/ComputingFaster.ipynb)
- Обсуждение
	- Текущее соревнование
	
### 2019-11-30
- Лекционная часть
	- Ансамбли моделей
- Обсуждение
	- Решения соревнования Sendy logistics challenge
