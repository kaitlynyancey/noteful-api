CREATE TABLE noteful_notes (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    notename TEXT NOT NULL,
    folder_id INTEGER
        REFERENCES noteful_folders(id) ON DELETE CASCADE NOT NULL,
    date_modified TIMESTAMPTZ DEFAULT now() NOT NULL,
    content TEXT NOT NULL
);