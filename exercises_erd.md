For all exercises implement an ER-diagram for the domain description.

## **Exercise 1: University Enrollment System**

**Scenario:**

A university wants to develop a system to manage information about its students, courses, and enrollments. Each student has a unique identification number, a name, and a declared major. The university offers various courses, each identified by a unique course number, along with a title and the department that offers it. Students can enroll in multiple courses, and for each enrollment, they receive a grade. Each student only have one grade in each course.

---

## **Exercise 2: Company Project Management**

**Scenario:**

A company needs a system to keep track of its employees, the departments they belong to, and the projects they are working on. Each employee has a unique ID, a name, and a job title. Employees are assigned to one department, which has its own unique ID, name and budget. Employees can work on multiple projects, and each project can have several employees assigned to it. For every project an employee works on, the company wants to record how many hours per week the employee dedicates to that project.


---

## **Exercise 3: Academic Publications**

**Scenario:**

A research institution wants to create a database to manage information about professors and their publications. Each professor has a unique ID, a name, and a department they belong to. Professors can write multiple publications, and each publication can have multiple professor authors. Publications have a unique ID, a title, and the year they were published.

---

## **Exercise 4: Online Retail System**

**Scenario:**

An online retailer wants to set up a database to manage customers, orders, and products. Each customer has a unique ID, a name, and an address. Customers place orders, each identified by a unique order ID and the date the order was placed. Each order is associated with the customer who placed it. The retailer sells various products, each with a unique product ID, a name, and a price. An order can include multiple products, and for each product in an order, the quantity ordered is recorded. You can assume that a product has the same price in all orders. 

---

## **Exercise 5: Book Publishing**

**Scenario:**

A publishing company needs a database to manage information about books, authors, and publishers. Each book has an ISBN number, a title, the year it was published, and the publisher who published it. Each publisher has a unique ID, a name, and an address. Authors have a unique ID and a name. Books can have multiple authors, and authors can write multiple books.

Advanced exercises är tänkt att representera en VG-fråga på tentan.

## Advanced exercise 1
Andra frågan är mer än VG.
https://opentextbc.ca/dbdesign01/back-matter/appendix-b-erd-exercises/

## Advanced exercise 2
The University of Bristol Hoverboard Society (HovSoc) wants to create a database to manage its membership and events. Each member has a name, an optional student number, a contact e-mail address and a hoverboard riding skill level (represented as an integer, minimum 0). We assume that e-mail addresses are unique among members.

The committee consists of some of the members, each of which has a unique committee role. We assume that committee roles do not change during the year and that each committee role must be filled every year.

An event has a date, a name, a location, an optional description and an organiser who must be a society member (not necessarily a committee member). An event is attended by a set of members. There is never more than one event at the same location on the same date but event names are not unique.

members (memebr_ID PK,
        name, student_number, email UNIQUE, skill_level)

committee (role_id PK,
        role_name, member_id,
        FOREIGN KEY member_id REFERENCES members(member_id)
        )

events (event_id PK,
        event_name, date, location, description, organiser_id,
        FOREIGN KEY organiser_id REFERENCES members(member_id)
        UNIQUE (date, location)
        )

event_attendance (event_id, member_id PK,
                FOREIGN KEY (event_id) REFERENCES events(event_id),
                FOREIGN KEY (member_id) REFERENCES members(member_id)
                )



## Advanced exercise 3
Your task is to make an ER-diagram for the database of a gym company, managing their
facilities and their customer records.

The database should contain a set of current and past customers. Each customer has a name
and an email-address. Not every customer is a current member, and the database should keep
track of which customers are currently members, and when their membership expires.

Each gym facility has a city, an address and a name. Two facilities can have the same name,
but only if they are in different cities. Gym facilities can be established in any city across the
world (but you can assume cities have unique names).

The database should also keep a record of times when each customer has accessed any gym
facility. This may include multiple accesses from the same customer to the same facility at
different times.


CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    membership_status BOOLEAN NOT NULL,  -- Membership status (1 for active, 0 for expired)
    membership_expiry DATE  -- Date when the membership expires (NULL if not a current member)
);

CREATE TABLE gym_facilities (
    facility_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    UNIQUE(name, city)
);

CREATE TABLE access_records (
    access_id INT PRIMARY KEY AUTO_INCREMENT,
    access_time DATETIME NOT NULL,
    customer_id INT NOT NULL,
    facility_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (facility_id) REFERENCES gym_facilities(facility_id)
);

