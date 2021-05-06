# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
ruby 2.7.1p83 (2020-03-31 revision a0c7c23c9c) [x86_64-linux]

* Rails version
Rails 5.2.3

* Database initialization
$ bundle install
...
$ rails db:seed
3 docteurs créés :
ID | FIRST_NAME | LAST_NAME | SPECIALTY     | ZIP_CODE  
---|------------|-----------|---------------|-----------
1  | Carmen     | Wehner    | Rhumatologie  | 36614-5292
2  | Jasmin     | Roob      | Ophtalmologie | 32768-9554
3  | Winnie     | Johnson   | Gynécologie   | 11523     

3 patients créés :
ID | FIRST_NAME | LAST_NAME
---|------------|----------
1  | Richie     | Zemlak   
2  | Cristina   | O'Reilly 
3  | Misha      | Kunde    

6 rendez-vous créés :
ID | DATE                    | DR. ID | DR. FIRSTNAME | DR. LASTNAME | DR. SPECIALTY | DR. ZIP CODE | PATIENT ID | PATIENT FIRSTNAME | PATIENT LASTNAME
---|-------------------------|--------|---------------|--------------|---------------|--------------|------------|-------------------|-----------------
1  | 2021-03-30 00:00:00     | 1      | Carmen        | Wehner       | Rhumatologie  | 36614-5292   | 1          | Richie            | Zemlak          
2  | 2020-08-04 00:00:00     | 2      | Jasmin        | Roob         | Ophtalmologie | 32768-9554   | 2          | Cristina          | O'Reilly        
3  | 2020-06-17 00:00:00     | 3      | Winnie        | Johnson      | Gynécologie   | 11523        | 3          | Misha             | Kunde           
4  | 2021-05-09 00:00:00     | 3      | Winnie        | Johnson      | Gynécologie   | 11523        | 1          | Richie            | Zemlak          
5  | 2021-05-16 00:00:00     | 1      | Carmen        | Wehner       | Rhumatologie  | 36614-5292   | 2          | Cristina          | O'Reilly        
6  | 2021-05-07 00:00:00     | 2      | Jasmin        | Roob         | Ophtalmologie | 32768-9554   | 3          | Misha             | Kunde           

