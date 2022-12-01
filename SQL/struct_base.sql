begin transaction;

CREATE TABLE Quizz(
   id_quizz INT,
   libelle VARCHAR(50),
   PRIMARY KEY(id_quizz)
);

CREATE TABLE Question(
   id_question INT,
   libelle VARCHAR(255),
   PRIMARY KEY(id_question)
);

CREATE TABLE Utilisateur(
   id_user INT,
   login VARCHAR(50) NOT NULL,
   pwd VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_user)
);

CREATE TABLE score(
   id_score INT,
   score INT,
   PRIMARY KEY(id_score)
);

CREATE TABLE moment(
   Date_Heure DATETIME,
   PRIMARY KEY(Date_Heure)
);

CREATE TABLE Propo(
   id_propo INT,
   Libelle VARCHAR(50),
   is_true LOGICAL,
   id_question INT NOT NULL,
   PRIMARY KEY(id_propo),
   FOREIGN KEY(id_question) REFERENCES Question(id_question)
);

CREATE TABLE Quizz_Question(
   id_quizz INT,
   id_question INT,
   PRIMARY KEY(id_quizz, id_question),
   FOREIGN KEY(id_quizz) REFERENCES Quizz(id_quizz),
   FOREIGN KEY(id_question) REFERENCES Question(id_question)
);

CREATE TABLE Scoring(
   id_user INT,
   id_score INT,
   Date_Heure DATETIME,
   PRIMARY KEY(id_user, id_score, Date_Heure),
   FOREIGN KEY(id_user) REFERENCES Utilisateur(id_user),
   FOREIGN KEY(id_score) REFERENCES score(id_score),
   FOREIGN KEY(Date_Heure) REFERENCES moment(Date_Heure)
);

CREATE TABLE Asso_7(
   id_quizz INT,
   id_user INT,
   PRIMARY KEY(id_quizz, id_user),
   FOREIGN KEY(id_quizz) REFERENCES Quizz(id_quizz),
   FOREIGN KEY(id_user) REFERENCES Utilisateur(id_user)
);

commit;
