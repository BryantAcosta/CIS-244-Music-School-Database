CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Instrument VARCHAR(50),
    SkillLevel VARCHAR(20)
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    TeachingInstrument VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instrument VARCHAR(50),
    Level VARCHAR(20),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Students VALUES
(1, 'Debby', 'Santos', 'Debbys212@gmail.com', 'Vocals', 'Beginner'),
(2, 'Larry', 'Johnson', 'Ljohnson49@gmail.com', 'Drums', 'Intermediate'),
(3, 'Giovanny', 'Adams', 'Gioadams77@gmail.com', 'Violin', 'Beginner'),
(4, 'Sarah', 'Williams', 'Sarahw115@gmail.com', 'Piano', 'Advanced'),
(5, 'Zion', 'Brito', 'Zbrito01@gmail.com', 'Violin', 'Intermediate'),
(6, 'Violet', 'Smith', 'Vsmith999@gmail.com', 'Guitar', 'Intermediate'),
(7, 'Jerry', 'White', 'Jerryw73@gmail.com', 'Vocals', 'Advanced'),
(8, 'Natasha', 'Brown', 'Nbrown68@gmail.com', 'Violin', 'Advanced'),
(9, 'Emily', 'Blanco', 'Emilyblanco45@gmail.com', 'Drums', 'Beginner'),
(10, 'Harold', 'Davis', 'Haroldd50@gmail.com', 'Piano', 'Beginner');

INSERT INTO Teachers VALUES
(1, 'Patricia', 'Hall', 'Piano', 'patriciah001@outlook.com'),
(2, 'Kayla', 'Collins', 'Guitar', 'kaylac007@outlook.com'),
(3, 'Walter', 'Lee', 'Violin', 'walterl001@outlook.com'),
(4, 'Elizabeth', 'King', 'Drums', 'elizabethk003@outlook.com'),
(5, 'Ben', 'Vasquez', 'Vocals', 'benv002@outlook.com');

INSERT INTO Courses VALUES
(1, 'Intro to Piano', 'Piano', 'Beginner', 1),
(2, 'Guitar Techniques', 'Guitar', 'Intermediate', 2),
(3, 'Violin Fundamentals', 'Violin', 'Beginner', 3),
(4, 'Drum Techniques', 'Drums', 'Intermediate', 4),
(5, 'Vocal Warmups', 'Vocals', 'Beginner', 5),
(6, 'Violin Techniques', 'Violin', 'Intermediate', 3),
(7, 'Advanced Piano', 'Piano', 'Advanced', 1),
(8, 'Advanced Vocals', 'Vocals', 'Advanced', 5);

INSERT INTO Enrollments VALUES
(1, 1, 5, '2025-07-09'),
(2, 2, 4, '2025-04-24'),
(3, 3, 3, '2025-07-02'),
(4, 4, 7, '2025-04-21'),
(5, 5, 6, '2025-05-07'),
(6, 6, 2, '2025-04-17'),
(7, 7, 8, '2025-05-01'),
(8, 10, 1, '2025-07-16');
