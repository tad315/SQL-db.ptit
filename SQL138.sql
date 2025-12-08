update Users
set name = upper(substring(name, 1, 1)) 
            + lower(substring(name, 2, len(name)));