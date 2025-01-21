

\c mydb



 CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE interests (
  interest_id SERIAL PRIMARY KEY,
  point_of_focus VARCHAR(255),
  created_at TIMESTAMP,
  updated_at TIMESTAMP
);



CREATE TABLE user_interests (
    user_interest_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    interest_id INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (user_id),
    CONSTRAINT fk_interest_id FOREIGN KEY (interest_id) REFERENCES interests (interest_id)
);

	--CREATE TABLE interests (
	CREATE TABLE posts (
  post_id SERIAL PRIMARY KEY,
  user_id INTEGER NOT NULL,
  user_interest_id INTEGER NOT NULL,
  content VARCHAR(255) NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (user_interest_id) REFERENCES user_interests(user_interest_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


 CREATE TABLE reactions (
    react_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
    react VARCHAR(200) NOT NULL CHECK (react IN ('good', 'bad', 'neutral', 'thumpup', 'thumpdown', 'sad', 'like')),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );



CREATE TABLE comments (
    comment_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
    comment_text TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (post_id) REFERENCES posts(post_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP

);










 CREATE TABLE feedback (
    feedback_id SERIAL PRIMARY KEY,
    react_id INTEGER,
    comment_id INTEGER,
    FOREIGN KEY (react_id) REFERENCES reactions(react_id),
    FOREIGN KEY (comment_id) REFERENCES comments(comment_id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
