### BOOKMARK MANAGER

First user story:
```
As a user,
So I can see my most visited websites,
I want to see a list of bookmarks.
```
Second user story:
```
As a user,
I want to add to my list of bookmarks
```

Domain model:
(from walkthrough)
![model](https://github.com/makersacademy/course/blob/master/bookmark_manager/images/bookmark_manager_1.png)
### setting up the database:
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql
