Se material på LearnPoint.

Övningarna nedan är gjorda för att likna tentafrågor på VG-nivå.

### **Exercise 1: Employee and Project Data**

Consider the following unnormalized table that stores employee information:

- **EmployeeData** table:

| EmployeeID | EmployeeName | DepartmentID | DepartmentName | ProjectIDs                |
|------------|--------------|--------------|----------------|---------------------------|
| 1          | Alice Smith  | D001         | HR             | P101,P102                 |
| 2          | Bob Johnson  | D002         | IT             | P103                      |
| 3          | Carol White  | D001         | HR             | P101,P104,P105            |
| 4          | David Brown  | D003         | Finance        | P106,P107                 |

**Tasks:**

a) Normalize the table up to Third Normal Form (3NF).

---

### **Exercise 2: Order Management System**

Given the following table:

- **Orders** table:

| OrderID | OrderDate  | CustomerID | CustomerName | CustomerAddress       | ProductID | ProductName | Quantity | UnitPrice |
|---------|------------|------------|--------------|-----------------------|-----------|-------------|----------|-----------|
| 1001    | 2023-01-15 | C001       | John Doe     | 123 Maple Street      | P001      | Widget      | 5        | 10.00     |
| 1002    | 2023-01-16 | C002       | Jane Smith   | 456 Oak Avenue        | P002      | Gizmo       | 2        | 15.00     |
| 1003    | 2023-01-17 | C001       | John Doe     | 123 Maple Street      | P003      | Doohickey   | 1        | 20.00     |

**Tasks:**

a) List all the functional dependencies in this table.

b) Why does this break third normal form?

c) Normalize the table to Third Normal Form (3NF).

---

### **Exercise 3: Library Database**

You have a table that stores information about books and authors:

- **BookAuthor** table:

| BookID | Title                 | Genre     | AuthorID | AuthorName   | AuthorNationality | PublisherID | PublisherName    | PublisherAddress    |
|--------|-----------------------|-----------|----------|--------------|-------------------|-------------|------------------|---------------------|
| B001   | "The Great Gatsby"    | Fiction   | A001     | F. Scott F.  | American          | P001        | Scribner         | New York, NY        |
| B002   | "1984"                | Dystopian | A002     | George Orwell| British           | P002        | Secker & Warburg | London, UK          |
| B003   | "To Kill a Mockingbird"| Fiction  | A003     | Harper Lee   | American          | P001        | Scribner         | New York, NY        |
| B004   | "Animal Farm"         | Satire    | A002     | George Orwell| British           | P002        | Secker & Warburg | London, UK          |

**Tasks:**

a) Identify any redundancies and anomalies that might occur in this table design.

b) Normalize the table to Third Normal Form (3NF).

---

### **Exercise 4: University Course Enrollments**

Consider a database storing course enrollment information:

- **Enrollment** table:

| StudentID | StudentName | CourseID | CourseName      | InstructorID | InstructorName | Semester | Grade |
|-----------|-------------|----------|-----------------|--------------|----------------|----------|-------|
| S001      | Alice Green | C101     | Introduction to CS | I001      | Dr. Smith      | Fall 2023| A     |
| S002      | Bob Blue    | C102     | Data Structures | I002         | Dr. Jones      | Fall 2023| B     |
| S001      | Alice Green | C102     | Data Structures | I002         | Dr. Jones      | Fall 2023| A-    |
| S003      | Charlie Red | C101     | Introduction to CS | I001      | Dr. Smith      | Fall 2023| B+    |

**Tasks:**

a) Identify potential insertion, update, and deletion anomalies.

b) Normalize the table to Third Normal Form (3NF).

---

### **Exercise 5: Functional Dependencies Analysis**

Given the relation **R(A, B, C, D, E)** with the following functional dependencies:

1. **A → B**
2. **B → C**
3. **C → D**
4. **D → E**

Assuming the following sample data:

| A  | B   | C   | D   | E   |
|----|-----|-----|-----|-----|
| a1 | b1  | c1  | d1  | e1  |
| a2 | b2  | c2  | d2  | e2  |
| a3 | b3  | c3  | d3  | e3  |

**Tasks:**
a) Assess whether the relation is in Third Normal Form (3NF). Justify your answer.

b) If the relation is not in 3NF, decompose it into relations that are in 3NF.

c) Repeat questions a) and b) for the functional dependencies:
1. **A → B**
2. **B → C**
3. **C → D**
4. **C → E**
---

### **Exercise 6: Sales Transactions**

An online retailer uses the following table to record sales transactions:

- **SalesTransactions** table:

| TransactionID | TransactionDate | CustomerID | CustomerName | CustomerEmail     | ProductID | ProductName | ProductCategory | Quantity | Price  | TotalAmount |
|---------------|-----------------|------------|--------------|-------------------|-----------|-------------|-----------------|----------|--------|-------------|
| T1001         | 2023-02-01      | C100       | John Doe     | john@example.com  | P200      | Laptop      | Electronics     | 1        | 1000.00| 1000.00     |
| T1002         | 2023-02-01      | C101       | Jane Smith   | jane@example.com  | P201      | Headphones  | Electronics     | 2        | 50.00 | 100.00      |
| T1003         | 2023-02-02      | C100       | John Doe     | john@example.com  | P202      | Coffee Maker| Home Appliances | 1        | 80.00 | 80.00       |

**Tasks:**

a) Identify all functional dependencies in the table.

b) Normalize the table up to Third Normal Form (3NF), detailing the process.

---

### **Exercise 7: Vehicle Maintenance Records**

A car rental company maintains the following table:

- **VehicleMaintenance** table:

| VehicleID | Make    | Model   | Year | LicensePlate | ServiceDate | ServiceType | MechanicID | MechanicName |
|-----------|---------|---------|------|--------------|-------------|-------------|------------|--------------|
| V001      | Toyota  | Camry   | 2020 | ABC123       | 2023-03-01  | Oil Change  | M001       | Mike Miller  |
| V002      | Honda   | Accord  | 2019 | XYZ789       | 2023-03-05  | Tire Rotation| M002      | Sarah Johnson|
| V001      | Toyota  | Camry   | 2020 | ABC123       | 2023-04-01  | Brake Inspection| M003   | David Lee    |

**Tasks:**

a) Point out any normalization problems with this table.

b) Normalize the table to Third Normal Form (3NF).

---

### **Exercise 8: Hospital Patient Records**

A hospital keeps patient visit information in the following table:

- **PatientVisits** table:

| PatientID | PatientName   | PatientDOB  | VisitID | VisitDate  | DoctorID | DoctorName  | Department  | Diagnosis        | TreatmentPlan     |
|-----------|---------------|-------------|---------|------------|----------|-------------|-------------|------------------|-------------------|
| P001      | Emily Davis   | 1990-05-15  | V1001   | 2023-01-10 | D001     | Dr. Adams   | Cardiology  | Hypertension     | Medication A      |
| P002      | Michael Brown | 1985-08-22  | V1002   | 2023-01-12 | D002     | Dr. Baker   | Neurology   | Migraine         | Medication B      |
| P001      | Emily Davis   | 1990-05-15  | V1003   | 2023-02-15 | D003     | Dr. Clark   | Orthopedics | Sprained Ankle   | Physical Therapy  |

**Tasks:**

a) Identify redundancies and potential anomalies in this table design.

b) Normalize the table up to Third Normal Form (3NF).

---

### **Exercise 9: Inventory Management**

An inventory system uses the following table to track products:

- **Inventory** table:

| ProductID | ProductName | SupplierID | SupplierName    | SupplierContact    | WarehouseID | WarehouseLocation | StockQuantity |
|-----------|-------------|------------|-----------------|--------------------|-------------|-------------------|---------------|
| P001      | Widget      | S001       | Acme Corp       | 123-456-7890       | W001        | New York          | 100           |
| P002      | Gizmo       | S002       | Globex Inc.     | 987-654-3210       | W002        | Los Angeles       | 200           |
| P003      | Thingamajig | S001       | Acme Corp       | 123-456-7890       | W001        | New York          | 150           |

**Tasks:**

a) List the functional dependencies in the table.

b) Is this table in Third Normal Form?

c) Normalize the table to 3NF if necessary.

---

### **Exercise 10: Music Streaming Database**

A music streaming service stores data in the following table:

- **UserListeningHistory** table:

| UserID | UserName   | SongID | SongTitle       | ArtistID | ArtistName   | AlbumID | AlbumTitle    | PlayDate   |
|--------|------------|--------|-----------------|----------|--------------|---------|---------------|------------|
| U001   | Alice      | S001   | "Imagine"       | A001     | John Lennon  | AL001   | "Imagine"     | 2023-05-01 |
| U002   | Bob        | S002   | "Hey Jude"      | A002     | The Beatles  | AL002   | "Hey Jude"    | 2023-05-02 |
| U001   | Alice      | S003   | "Let It Be"     | A002     | The Beatles  | AL003   | "Let It Be"   | 2023-05-03 |
| U003   | Charlie    | S001   | "Imagine"       | A001     | John Lennon  | AL001   | "Imagine"     | 2023-05-04 |

**Tasks:**

a) Discuss the potential redundancy and anomalies in this table that might occur now or in the future.

b) Normalize the table to Third Normal Form (3NF).