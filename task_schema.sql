CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    role VARCHAR(50) DEFAULT 'member',
    time_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL,
    description TEXT
);

CREATE TABLE task_types (
    task_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    status VARCHAR(30) DEFAULT 'Pending',
    user_id INT NOT NULL,
    project_id INT,
    task_type_id INT,
    due_date DATE,

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (task_type_id) REFERENCES task_types(task_type_id)
);

CREATE TABLE subtasks (
    subtask_id INT AUTO_INCREMENT PRIMARY KEY,
    task_id INT NOT NULL,
    title VARCHAR(150),
    status VARCHAR(30),

    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

CREATE TABLE attachments (
    attachment_id INT AUTO_INCREMENT PRIMARY KEY,
    task_id INT,
    file_name VARCHAR(200),
    file_type VARCHAR(50),
    file_path VARCHAR(255),

    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
);

CREATE TABLE access_control (
    access_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    can_add BOOLEAN DEFAULT FALSE,
    can_edit BOOLEAN DEFAULT FALSE,
    can_delete BOOLEAN DEFAULT FALSE,

    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users (name, email, role)
VALUES ('Fatin Inarah', 'inarahfatin518@gmail.com', 'admin'),
('Aisyah', 'aisyahsafiah@gmail.com', 'member'),
('YangYang', 'xiaoyang123@gmail.com', 'member'),
('Bailu', 'bailu67@gmail.com', 'member');

INSERT INTO tasks (title, description, user_id, status)
VALUES ('Task Management Database', 'Create ERD and SQL schema', 1, 'In Progress'),
('Prepare Project Report', 'Write final project documentation', 2, 'Pending'),
('Design UI Mockup', 'Create initial UI design', 3, 'In Progress'),
('Testing Module', 'Test system functionality', 4, 'Pending'),
('Submit Internship Task', 'Upload files to GitHub', 1, 'Done');
