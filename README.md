
Visit the deployed version on heroku - https://place-sharing-sunil.herokuapp.com/

Log in with - user1@test.com / 123456 or user2@test.com / 123456 or user3@test.com / 123456

Seed data for users and locations in db/seeds.rb 

Steps to install and run the app locally - 

git clone https://github.com/sunil8627/place_sharing_app.git

cd place_sharing_app

bundle install

rake db:create

rake db:migrate

rake db:seed

Start the server - rails s

Go to http://localhost:3000/
