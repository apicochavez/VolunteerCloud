ALTER TABLE VOLUNTEERING_HISTORY ADD CONSTRAINT fk_user_id FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID) ON DELETE CASCADE; 