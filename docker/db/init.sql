CREATE TABLE candidate(
  candidate_id serial NOT NULL,
  got timestamp NOT NULL,
  fio character varying(100) NOT NULL,
  city character varying(50) NOT NULL,
  university character varying(1000) NOT NULL,
  grade character varying(100) NOT NULL,
  phone character varying(100) NOT NULL,
  telegram character varying(100) NOT NULL,
  skills_summary character varying(2000) NOT NULL,
  project_summary character varying(2000) NOT NULL,
  reason_summary character varying(2000) NOT NULL,
  questions character varying(2000),
  CONSTRAINT candidate_pkey PRIMARY KEY(candidate_id)
);

CREATE TABLE users(
    user_id serial NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(64) NOT NULL,
    name character varying(100) NOT NULL,
    role character varying(100),
    CONSTRAINT users_pkey PRIMARY KEY (user_id)
);

INSERT INTO users (email, password, name, role) VALUES
    ('antonkis2012@gmail.com', 'transas123', 'Антон Кисляков', 'Руководитель программы'),
    ('zhenulik5@gmail.com', 'okay1234', 'Евгения Морозова', 'Менеджер программы'),
    ('garkushenko.d@yandex.ru', 'superstar', 'Дарья Гаркушенко', 'Эксперт и партнер программы');