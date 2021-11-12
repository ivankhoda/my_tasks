# README

This is README

Things you may want to cover:

- Ruby version ruby-2.7.0

- System dependencies

- Configuration

- Database creation

  # Before all please install PostgreSQL locally, and run it.

  To do so on MacOS, you can check this link https://formulae.brew.sh/formula/postgresql

- Database initialization

  # Before launch you project please be sure that you have initialized your database by command 'rake db:create'

  # to create API please read https://guides.rubyonrails.org/getting_started.html#mvc-and-you-generating-a-model first

  # following methods are availiable :

- GET /projects — return all projects with tasks
- POST /todos — сreate new task
- PATCH /projects/id/todo/id — update task

You can use following data for test :
METHOD POST /todos
body: {"text":"Сделать деплой на heroku", "isCompleted":false, "project_id":"2"}
To test task creation

METHOD PATCH /todos
body: {"text":"Сделать деплой на heroku", "isCompleted":true, "project_id":"2"}
To test task update

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
