CREATE DATABASE IF NOT EXISTS peoplepertask ;

USE `peoplepertask`;

CREATE TABLE Users(
ID_user INT NOT NULL AUTO_INCREMENT,
user_name VARCHAR(25) NOT NULL,
userPassword VARCHAR(15) NOT NULL,
email VARCHAR(50) NOT NULL,
birthday DATE,
City VARCHAR(255),
PostalCode VARCHAR(5),
PRIMARY KEY (ID_user)
);

-- Inserting sample data into the 'users' table

INSERT INTO users(user_name,userPassword,email,birthday,City,PostalCode)
VALUES ('lahcen ben','ben2020','lahcen.ben3@gmail.com','2002-02-02','Alnif','52425'),
('abdlghani','lghani99','ayt.tamghart@gmail.com','2001-01-01','tinghir','54425'),
('Rached','dhijd34','duiu.ben3@gmail.com','2000-12-22','Ouarzazat','59825'),
('Morad','enihd3','morad.oziki@gmail.com','2001-04-02','Alnif','52245'),
('Nasr','judfo6-','lahcen.lonis@gmail.com','2001-10-07','Rabat','34565');

CREATE TABLE freelance(
id INT NOT NULL AUTO_INCREMENT,
FreelanceName VARCHAR(25) NOT NULL,
skills VARCHAR(100),
ID_user INT NOT NULL UNIQUE,
PRIMARY KEY (id),
FOREIGN KEY (ID_user) REFERENCES users(ID_user)
);

-- Inserting sample data into the 'freelance' table

INSERT INTO freelance(FreelanceName,skills,ID_user)
VALUES ('darkman','ux/ui',4),
('mikehurley', 'Web Development, Graphic Design', 1),
('weblinkbuilding', 'Content Writing, SEO', 2),
('GINSAN', 'Mobile App Development, UI/UX Design', 3),
('guhgèu', 'SEO and Web Design Experts', 5);


CREATE TABLE testimonials(
id INT NOT NULL AUTO_INCREMENT,
Commentaire VARCHAR(200) NOT NULL,
ID_user INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (ID_user) REFERENCES users(ID_user)
);


-- Inserting sample data into the 'testimonials' table


INSERT INTO testimonials(Commentaire,ID_user)
VALUES 
    ('Great work!', 1),
    ('Very professional.', 2),
    ('Highly recommended.', 3),
    ('Highly recommended freelancer.', 4),
    ('Great work ethics.', 4),
    ('Very professional work.', 1);


CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT,
CategoryName VARCHAR(30) NOT NULL,
PRIMARY KEY (id)
);

-- Inserting sample data into the 'categories' table

INSERT INTO categories(CategoryName)
VALUES 
    ('Technology'),
    ('Writing'),
    ('Design'),
	 ('Social Media'),
    ('Illustration'),
    ('Content Creation'),
    ('UI/UX Design');


CREATE TABLE sub_categories(
id INT NOT NULL AUTO_INCREMENT,
subName VARCHAR(30) NOT NULL,
id_category INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_category) REFERENCES categories(id)
);

-- Inserting sample data into the 'sub_categories' table

INSERT INTO sub_categories(subName,id_category)
VALUES
    ('Web Development', 1),
    ('Content Creation', 2),
    ('Graphic Design', 3),
    ('Music Production', 4),
    ('Project Planning', 5),
    ('Social Media Management', 2),
    ('Illustration', 3),
    ('Content Writing', 6);
    

CREATE TABLE projects(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(50) NOT NULL,
project_description VARCHAR(200) NOT NULL,
id_categorie INT NOT NULL,
id_sub_category INT NOT NULL,
ID_user INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id_categorie) REFERENCES categories(id),
FOREIGN KEY (id_sub_category) REFERENCES sub_categories(id),
FOREIGN KEY (ID_user) REFERENCES users(ID_user)
);


-- Inserting sample data into the 'projects' table

INSERT INTO projects(title,project_description,id_categorie,id_sub_category,ID_user)
VALUES 
    ('E-commerce Website', 'Develop an online store', 1, 1, 1),
    ('Blog Writing', 'Write SEO optitestimonialstestimonialsmized articles', 2, 2, 2),
    ('Logo Design', 'Create a company logo', 3, 3, 3),
    ('Data Analysis Report', 'Analyze and present data in a comprehensive report', 1, 3, 3),
    ('Professional Photography Session', 'Capture professional photos for a portfolio', 6, 3, 1),
    ('Business Strategy Consulting', 'Provide strategic advice for business growth', 3, 1, 5),
    ('Compose Original Music', 'Create original music track for a video game', 2, 4, 3),
    ('Project Management Assistance', 'Assist in project planning and coordination', 4, 5, 2),
    ('Social Media Content Creation', 'Create engaging content for social media platforms', 3, 5, 1),
    ('Illustrate Children''s Book', 'Illustrate characters and scenes for a book', 3, 5, 3);


CREATE TABLE Offers(
id INT NOT NULL AUTO_INCREMENT,
amount DECIMAL(10, 2) NOT NULL,
deadline DATE,
ID_Freelance INT NOT NULL,
Id_project INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (ID_Freelance) REFERENCES freelance(id),
FOREIGN KEY (Id_project) REFERENCES projects(id)
);

-- Inserting sample data into the 'Offers' table

INSERT INTO offers(amount, deadline, ID_Freelance, Id_project)
VALUES 
    (800.00, '2023-12-31', 1, 1),
    (400.00, '2023-12-20', 2, 2),
    (600.00, '2023-12-25', 3, 3),
    (300.00, '2023-12-18', 4, 4),
    (1200.00, '2023-12-28', 5, 5);
