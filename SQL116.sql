select username, fname, lname, started_on
from Instructor
where year(started_on) >= year((now()) - 20)