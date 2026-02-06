**Task 4: Task Management System (Database design)**

**Author: Fatin Inarah binti Jafli**



**Overview**

This project contains a simple MySQL database schema for a Task Management System. The system allows users to manage tasks under different projects, assign task types, create subtasks, upload attachments, and control user access permissions. The main focus of this design is clarity, clean structure, and logical relationships between tables.



**File Structure**

InternAssesmentUGlobal/

&nbsp;	- task\_schema.sql

&nbsp;	- Task\_Management\_ERD.png

&nbsp;	- README.md



**Database Structure**

Tables Included (7 Total)

1.users - Team members and system users

2.projects - Project organization

3.task\_types - Task categorization

4.tasks - Main tasks table

5.subtasks - Task breakdown into smaller items

6.attachments - File storage (images/videos/documents)

7.access\_control - Permission management



**Sample Data**

The database includes pre-populated sample data:



* Users (4 records)

1. &nbsp;	Fatin Inarah - Admin
2. &nbsp;	Aisyah - Member
3. &nbsp;	YangYang - Member
4. &nbsp;	Bailu - Member



* Tasks (5 records)

1. &nbsp;	Task Management Database (In Progress)
2. &nbsp;	Prepare Project Report (Pending)
3. &nbsp;	Design UI Mockup (In Progress)
4. &nbsp;	Testing Module (Pending)
5. &nbsp;	Submit Internship Task (Done)



**Entity Relationship Diagram (ERD)**



One-to-Many Relationships

1. Users -> Projects: One user can own multiple projects
2. Users -> Tasks: One user can be assigned multiple tasks
3. Users -> Tasks: One user can create multiple tasks
4. Projects -> Tasks: One project contains multiple tasks
5. Tasks -> Subtasks: One task can have multiple subtasks
6. Tasks -> Attachments: One task can have multiple attachments
7. Subtasks -> One subtask can have multiple attachments 
8. Users -> Access Control: One user can have multiple permissions





**How to Execute**

* Method 1: phpMyAdmin

1. Login to phpMyAdmin
2. Select/Create database
3. Go to "Import" tab
4. Choose task\_schema.sql file
5. Click "Go"



* Method 2: GitHub repository

1\. Clone the repository:

&nbsp;  `git clone https://github.com/inarahh/InternAssesmentUGlobal.git`

2\. Create database: 

&nbsp;	mysql -u root -p

&nbsp;	CREATE DATABASE task\_management;

3\. Import `task\_schema.sql` into preferred SQL environment (MySQL/PostgreSQL/etc.)

&nbsp;	USE task\_management;

 	SOURCE task\_schema.sql;



