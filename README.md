# Ruby on Rails boilerplate

To get this application running, after cloning the project, run the commands:

  ```docker compose run app rails new app -j esbuild --force --database=postgresql --css=bootstrap --skip-git```
  
  ```cd app```
  
  ```bundler install```
  
  ```rake db:create```
  
  ```rails s```

You have to run the bundler install command, because I can't get the gem ```tzinfo-data`` to get copied over. You have to run the rake command to get the database created. 
