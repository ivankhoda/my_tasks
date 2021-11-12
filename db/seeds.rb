# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
projects =
  Project.create([{ title: 'Семья'  },
                  { title: 'Работа' },
                  { title: 'Прочее' }])

tasks =
  Task.create(
    [
      { text: 'Купить молоко', isCompleted: false, project: projects.first },
      { text: 'Заменить масло в двигателе до 23 апреля', isCompleted: false, project: projects.first },
      { text: 'Отправить письмо бабушке', isCompleted: true, project: projects.first },
      { text: 'Заплатить за квартиру', isCompleted: false, project: projects.first },
      { text: 'Забрать обувь из ремонта', isCompleted: false, project: projects.first },
      { text: 'Позвонить заказчику', isCompleted: false },
      { text: 'Отправить документы', isCompleted: false, project: projects.second },
      { text: 'Отправить письмо бабушке', isCompleted: true, project: projects.second },
      { text: 'Заполнить отчет', isCompleted: false, project: projects.second },
      { text: 'Позвонить другу', isCompleted: false, project: projects.third },
      { text: 'Подготовиться к поездке', isCompleted: false, project: projects.third }
    ]
  )
